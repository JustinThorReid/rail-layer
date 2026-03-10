local meld                  = require "meld"
local Data                  = require "utils.Data"
local script_trigger_effect = require "utils.events.script_trigger_effect"
local nth_tick              = require "utils.events.nth_tick"

local Message               = require "scripts.MQ"
local experimental          = require "settings.experimental"
local revive_rails          = require "scripts.revive_rails"
local revive_signals        = require "scripts.revive_signals"
local revive_train_stops    = require "scripts.revive_train_stops"
local revive_power_poles    = require "scripts.revive_power_poles"
local _auto_advance         = require "scripts.auto_advance"
local auto_advance          = _auto_advance.auto_advance
local poll_stopped_trains   = _auto_advance.poll_stopped_trains

script_trigger_effect.register("rail-layer-stop", function(event)
  local rail_layer = event.cause_entity
  if not rail_layer then return end
  local train = rail_layer.train
  if not train then return end
  auto_advance(train)
end)

nth_tick.register(300, poll_stopped_trains)

script_trigger_effect.register("rail-layer-build", function(event)
  local rail_layer = event.cause_entity
  if not rail_layer then return end
  local train = rail_layer.train
  if not train then return end

  local messages = Message:new()
  messages:add(revive_rails(train, 7))
  messages:add(revive_signals(train, 7))
  messages:add(revive_train_stops(train, 7))
  messages:add(revive_power_poles(train, 7))

  if not experimental.alerts_enable.value then return end

  if #messages > 0 then 
    local message_text = game.tick .." ".. tostring(messages)
    local players_on_train = {}
    
    -- Check all locomotives and wagons for players
    for _, carriage in pairs(train.carriages) do
      if carriage.get_driver() then
        table.insert(players_on_train, carriage.get_driver().player)
      end
    end
    
    -- If there are players on the train, message them directly
    if #players_on_train > 0 then
      for _, player in pairs(players_on_train) do
        player.print(message_text)
      end
    else
      -- No players on train, message the train's force
      train.carriages[1].force.print(message_text)
    end
  end
end)



local function add_trigger(effect)
  return function(target)
    local target = not target and {} or target.type and { target } or target
    table.insert(target, effect)
    return target
  end
end


local entity = Data.copy.locomotive.locomotive
meld(entity, {
  name = "rail-layer",
  icon = mod_directory .. "/graphics/icons/rail-layer-fork.png",
  color = { r = 1, g = 0.75, b = 0 },
  default_copy_color_from_train_stop = false,
  allow_manual_color = false,
  max_speed = 0.25,
  drive_over_tie_trigger_minimal_speed = 0,
  tie_distance = 1,
  factoriopedia_simulation = { init = "require(\"" .. mod_directory .. "/factoriopedia/rail-layer\")" },
  crash_trigger = meld.invoke(add_trigger { type = "script", effect_id = "rail-layer-crash" }),
  stop_trigger = meld.invoke(add_trigger { type = "script", effect_id = "rail-layer-stop" }),
  drive_over_tie_trigger = meld.invoke(add_trigger { type = "script", effect_id = "rail-layer-build" }),
  drive_over_elevated_tie_trigger = meld.invoke(add_trigger { type = "script", effect_id = "rail-layer-build" })
})


local item = Data.copy["item-with-entity-data"].locomotive
meld(item, {
  name = "rail-layer",
  icon = mod_directory .. "/graphics/icons/rail-layer-fork.png",
  place_result = entity.name,
})
meld(entity, { minable = { result = item.name } })



local recipe = Data.copy.recipe.locomotive
meld(recipe, {
  name = "rail-layer",
  ingredients = {
    { type = "item", name = "engine-unit",        amount = 20 },
    { type = "item", name = "electronic-circuit", amount = 10 },
    { type = "item", name = "steel-plate",        amount = 30 }
  },
  results = {
    { type = "item", name = item.name, amount = 1 }
  },
})



local technology = Data.copy.technology["automated-rail-transportation"]
meld(technology, {
  name = "rail-layer",
  effects = { { type = "unlock-recipe", recipe = recipe.name } },
  icon = mod_directory .. "/graphics/technology/rail-layer-fork.png"
})



return {
  entity = Data.extends(entity),
  item = Data.extends(item),
  recipe = Data.extends(recipe),
  technology = Data.extends(technology),
}
