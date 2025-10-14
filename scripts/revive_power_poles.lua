local find          = require("scripts.find")
local revive_entity = require("scripts.revive_entity")
local experimental  = require("settings.experimental")
local Message       = require "scripts.MQ"

--- Build rail ghosts after rail end.
--- @param train LuaTrain
--- @param radius number
--- @return Message messages error messages on failure
local function revive_power_poles(train, radius)
  if not experimental.power_poles_enable.value then return end

  local stock_end = train.speed > 0 and train.front_stock or train.back_stock
  if not stock_end then return end
  local surface = stock_end.surface

  local inventories = {}
  for _, wagon in ipairs(train.cargo_wagons) do
    table.insert(inventories, wagon.get_inventory(defines.inventory.cargo_wagon))
  end

  local ghosts = surface.find_entities_filtered {
    ghost_type = "electric-pole",
    force = train.front_stock.force,
    position = stock_end.position,
    radius = radius,
  }

  local messages = Message:new()
  for _, ghost in pairs(ghosts) do
    messages:add(revive_entity(ghost, inventories))
  end
  return messages
end

return revive_power_poles
