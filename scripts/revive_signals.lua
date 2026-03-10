local find          = require("scripts.find")
local revive_entity = require("scripts.revive_entity")
local Message       = require "scripts.MQ"

--- Build rail ghosts after rail end.
--- @param train LuaTrain
--- @param radius number
--- @return Message messages error messages on failure
local function revive_signals(train, radius)
  local rail_end = train.speed > 0 and train.front_end or train.back_end
  rail_end.move_natural()
  local surface = rail_end.rail.surface
  local rail_start = rail_end.make_copy()
  rail_start.flip_direction()

  -- try to build ghost signals
  local signal_locations = {}
  table.insert(signal_locations, rail_end.out_signal_location)
  table.insert(signal_locations, rail_end.in_signal_location)
  table.insert(signal_locations, rail_end.alternative_in_signal_location)
  table.insert(signal_locations, rail_end.alternative_out_signal_location)
  table.insert(signal_locations, rail_start.out_signal_location)
  table.insert(signal_locations, rail_start.in_signal_location)
  table.insert(signal_locations, rail_start.alternative_in_signal_location)
  table.insert(signal_locations, rail_start.alternative_out_signal_location)

  local inventories = {}
  for _, wagon in ipairs(train.cargo_wagons) do
    table.insert(inventories, wagon.get_inventory(defines.inventory.cargo_wagon))
  end

  local messages = Message:new()
  for i, location in ipairs(signal_locations) do
    if not location then goto continue end
    local filter = { position = location.position, type = { "rail-signal", "rail-chain-signal" } }
    local ghost = find.ghost(surface, filter)

    messages:add(revive_entity(ghost, inventories))
    ::continue::
  end
  return messages
end

return revive_signals
