local find          = require("scripts.find")
local revive_entity = require("scripts.revive_entity")
local Message       = require "scripts.MQ"

--- Build rail ghosts after rail end.
--- @param train LuaTrain
--- @param radius number
--- @return Message messages error messages on failure
local function revive_rails(train, radius)
  local rail_end = train.speed > 0 and train.front_end or train.back_end

  local surface = rail_end.rail.surface
  local rail_next = rail_end.make_copy()

  local inventories = {}
  for _, wagon in ipairs(train.cargo_wagons) do
    table.insert(inventories, wagon.get_inventory(defines.inventory.cargo_wagon))
  end

  local messages = Message:new()

  -- check if there is multiple branches
  local branches = 0
  for _, extension in ipairs(rail_end.get_rail_extensions("rail")) do
    local filter = { direction = extension.direction, position = extension.position, name = extension.name }
    local ghost = find.ghost(surface, filter)
    local ramp = extension.name == "rail-ramp"
    local elevated = extension.name:sub(1, 9) == "elevated-"

    if not ghost or ramp or elevated then goto continue end
    branches = branches + 1
    ::continue::
  end


  -- try to build ghost rails
  for _, extension in ipairs(rail_end.get_rail_extensions("rail")) do
    local filter = { direction = extension.direction, position = extension.position, name = extension.name }
    local ghost = find.ghost(surface, filter)
    local ramp = extension.name == "rail-ramp"
    local elevated = extension.name:sub(1, 9) == "elevated-"

    if ramp or elevated then ghost = nil end

    if branches>1 and extension.name == "straight-rail" then
      local railsToBuild=extension.direction%4==0 and 3 or 2
      
      -- Build the first rail
      messages:add(revive_entity(ghost, inventories))
      
      -- Create a rail pointer starting from the built rail position
      local current_rail_next = rail_next.make_copy()
      
      for i = 2, railsToBuild do
        -- Move the rail pointer forward
        current_rail_next.move_natural()
        
        -- Get possible rail extensions from current position
        local next_extensions = current_rail_next.get_rail_extensions("rail")
        local next_ghost = nil
        
        -- Look for a straight rail extension
        for _, next_extension in ipairs(next_extensions) do
          if next_extension.name == "straight-rail" then
            local next_filter = { direction = next_extension.direction, position = next_extension.position, name = next_extension.name }
            next_ghost = find.ghost(surface, next_filter)
            if next_ghost then
              break -- Found a straight rail ghost, use this one
            end
          end
        end
        
        -- Build the next rail if found
        if next_ghost then
          messages:add(revive_entity(next_ghost, inventories))
        else
          break -- No more straight rails to build
        end
      end

    else
      messages:add(revive_entity(ghost, inventories))
    end
  end
  return messages
end

return revive_rails
