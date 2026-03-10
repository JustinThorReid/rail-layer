local experimental  = require "settings.experimental"
local find          = require "scripts.find"
local revive_entity = require "scripts.revive_entity"

local RAIL_NAMES = { "straight-rail", "curved-rail-a", "curved-rail-b", "half-diagonal-rail" }

local function dist2(a, b)
  local dx = a.x - b.x
  local dy = a.y - b.y
  return dx * dx + dy * dy
end

--- Returns true if the rail has any real connection in the given rail_direction.
local function has_real_connection(rail, rail_direction)
  for _, conn in ipairs({
    defines.rail_connection_direction.straight,
    defines.rail_connection_direction.left,
    defines.rail_connection_direction.right,
  }) do
    if rail.get_connected_rail({ rail_direction = rail_direction, rail_connection_direction = conn }) then
      return true
    end
  end
  return false
end

--- Walks forward from rail_end along the real rail graph (up to 10 segments)
--- and returns {rail, direction} for the first position whose immediate
--- extensions include a ghost rail oriented correctly for forward travel.
--- Returns nil if no ghost territory is found within 10 steps.
local function local_frontier(rail_end, surface)
  local cursor = rail_end.make_copy()

  for _ = 1, 10 do
    for _, extension in ipairs(cursor.get_rail_extensions("rail")) do
      local ghosts = surface.find_entities_filtered {
        ghost_name = extension.name,
        position   = extension.position,
        direction  = extension.direction,
      }
      if #ghosts > 0 then
        return { rail = cursor.rail, direction = cursor.direction }
      end
    end

    if not cursor.move_natural() then break end
  end

  return nil
end

--- Find all frontier real rails on the surface: real rails with exactly one open
--- end that are adjacent to ghost rails. Returns array of {rail, direction} where
--- direction is the open end (the end facing ghost territory).
local function find_frontiers(surface)
  local ghost_rails = surface.find_entities_filtered { ghost_name = RAIL_NAMES }
  local seen = {}
  local frontiers = {}

  for _, ghost in ipairs(ghost_rails) do
    local p = ghost.position
    local neighbors = surface.find_entities_filtered {
      type = RAIL_NAMES,
      area = { { p.x - 16, p.y - 16 }, { p.x + 16, p.y + 16 } },
    }
    for _, rail in ipairs(neighbors) do
      if not seen[rail.unit_number] then
        local has_front = has_real_connection(rail, defines.rail_direction.front)
        local has_back  = has_real_connection(rail, defines.rail_direction.back)
        if has_front ~= has_back then
          seen[rail.unit_number] = true
          local open_dir = has_front and defines.rail_direction.back or defines.rail_direction.front
          table.insert(frontiers, { rail = rail, direction = open_dir })
        end
      end
    end
  end

  return frontiers
end

--- Build ghost rails immediately ahead of frontier. Stays in automatic mode —
--- no manual_mode switching, which avoids the AutomatedTrainController signal
--- data crash (freed RailSignalData pointers when switching manual→automatic).
local function build_at_frontier(frontier, inventories, surface)
  local frontier_end = frontier.rail.get_rail_end(frontier.direction)
  for _, extension in ipairs(frontier_end.get_rail_extensions("rail")) do
    local ghost = find.ghost(surface, {
      name      = extension.name,
      position  = extension.position,
      direction = extension.direction,
    })
    if ghost then
      revive_entity(ghost, inventories)
    end
  end
end

--- Schedule the next temp stop. When already near ghost territory, pre-builds
--- the immediate ghost so the next stop is one step ahead (not at the current
--- position, which Factorio would consume instantly).
---@param train LuaTrain
---@return boolean
local function try_advance(train)
  local surface = train.front_end.rail.surface

  -- Priority 1: ghost territory reachable within 10 rail steps ahead.
  -- Only check front_end: looking backward via back_end can find the
  -- *rejoin* point of a ghost loop (the exit, not the entrance), causing
  -- the loop to be built in reverse with signals facing the wrong way.
  local front_f = local_frontier(train.front_end, surface)

  if front_f then
    local frontier  = front_f
    local start_end = train.front_end

    local inventories = {}
    for _, wagon in ipairs(train.cargo_wagons) do
      table.insert(inventories, wagon.get_inventory(defines.inventory.cargo_wagon))
    end

    -- Pre-build the ghost(s) immediately at the frontier so the train has
    -- real rail to drive onto. drive_over_tie handles signals/stops/poles
    -- as the train moves forward.
    build_at_frontier(frontier, inventories, surface)

    -- Re-scan: after building, the frontier has moved one step further.
    -- The temp stop there is ahead of the current position, so Factorio
    -- will not consume it immediately.
    local new_frontier = local_frontier(start_end, surface)
    if new_frontier then
      train.get_schedule().add_record {
        rail            = new_frontier.rail,
        rail_direction  = new_frontier.direction,
        temporary       = true,
        wait_conditions = {},
      }
    end
    -- If new_frontier is nil: no more ghosts remain, nothing to schedule.
    -- The current stop completes naturally and the train returns to its schedule.
    return true
  end

  -- Priority 2: global fallback — train is far from ghost territory.
  local frontiers = find_frontiers(surface)
  if #frontiers == 0 then return false end

  local front_pos = train.front_end.rail.position
  local back_pos  = train.back_end.rail.position
  local best, best_d
  for _, f in ipairs(frontiers) do
    local d = math.min(dist2(f.rail.position, front_pos), dist2(f.rail.position, back_pos))
    if not best_d or d < best_d then
      best   = f
      best_d = d
    end
  end

  if not best then return false end

  train.get_schedule().add_record {
    rail            = best.rail,
    rail_direction  = best.direction,
    temporary       = true,
    wait_conditions = {},
  }
  return true
end

--- Called when a rail-layer train stops in automatic mode.
---@param train LuaTrain
local function auto_advance(train)
  if not experimental.automatic_enable.value then return end
  if train.manual_mode then return end
  try_advance(train)
end

--- Returns true if the train's schedule already contains a temporary stop.
---@param train LuaTrain
---@return boolean
local function has_temp_stop(train)
  for _, record in ipairs(train.get_schedule().get_records()) do
    if record.temporary then return true end
  end
  return false
end

--- Periodic poll: find stopped rail-layer trains at a named station with no
--- temp stop and advance them toward ghost territory.
local function poll_stopped_trains()
  if not experimental.automatic_enable.value then return end
  local seen = {}
  for _, surface in pairs(game.surfaces) do
    for _, loco in ipairs(surface.find_entities_filtered { name = "rail-layer" }) do
      local train = loco.train
      if train and not seen[train.id] then
        seen[train.id] = true
        if not train.manual_mode
           and train.state == defines.train_state.wait_station
           and not has_temp_stop(train) then
          try_advance(train)
        end
      end
    end
  end
end

return { auto_advance = auto_advance, poll_stopped_trains = poll_stopped_trains }
