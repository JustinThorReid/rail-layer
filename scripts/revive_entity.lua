local remove_items       = require("scripts.remove_items")
local deconstruct_entity = require("scripts.deconstruct_entity")
local revive_tile        = require("scripts.revive_tile")
local MQ            = require "scripts.MQ"

local function items_to_place_this(ghost)
  local items = {}
  for _, item in pairs(ghost.ghost_prototype.items_to_place_this or {}) do
    table.insert(items, { name = item.name, count = item.count, quality = ghost.quality })
  end
  return items
end


---@param ghost LuaEntity|nil
---@param inventories LuaInventory[]|nil
---@return Message messages error messages on failure
local function revive_entity(ghost, inventories)
  local mq = MQ:new()
  inventories = inventories or {}
  if not ghost then return mq end
  local area = ghost.bounding_box

  -- deconstruct entities marked for deconstruction colliding with this ghost
  local to_deconstruct = ghost.surface.find_entities_filtered { area = area, to_be_deconstructed = true }
  for _, entity in pairs(to_deconstruct) do mq:add(deconstruct_entity(entity, inventories)) end

  -- revive ghost tiles needed for this ghost
  local tiles = ghost.surface.find_entities_filtered { type = "tile-ghost", area = area, force = ghost.force }
  for _, ghost in pairs(tiles) do mq:add(revive_tile(ghost, inventories)) end

  local items = #inventories > 0 and items_to_place_this(ghost) or {}
  mq:add(remove_items(inventories, items, true))
  if #mq > 0 then return mq end

  local collide, revived, proxy = ghost.revive { raise_revive = true }
  if not revived then return mq:add "rail-layer.revive-error" end

  remove_items(inventories, items)

  return mq
end

return revive_entity
