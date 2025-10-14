local find          = require("scripts.find")
local revive_entity = require("scripts.revive_entity")
local Message       = require "scripts.MQ"

--- Build rail ghosts after rail end.
--- @param train LuaTrain
--- @param radius number
--- @return Message messages error messages on failure
local function revive_train_stops(train, radius)
  local rail_end = train.speed > 0 and train.front_end or train.back_end
  rail_end.move_natural()
  local rail = rail_end.rail
  local surface = rail.surface

  local messages = Message:new()
  if rail.type ~= "straight-rail" and rail.direction % 4 ~= 0 then return messages end
  local x, y = rail.position.x, rail.position.y
  local train_stops_locations = rail.direction == 0 and { { x = x - 2, y = y }, { x = x + 2, y = y } } or
  { { x = x, y = y - 2 }, { x = x, y = y + 2 } }

  local inventories = {}
  for _, wagon in ipairs(train.cargo_wagons) do
    table.insert(inventories, wagon.get_inventory(defines.inventory.cargo_wagon))
  end

  for i, location in ipairs(train_stops_locations) do
    if not location then goto continue end
    local filter = { position = location, type = { "train-stop" } }
    local ghost = find.ghost(surface, filter)

    messages:add(revive_entity(ghost, inventories))
    ::continue::
  end
  return messages
end

return revive_train_stops
