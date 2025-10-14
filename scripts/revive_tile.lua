local remove_items = require("scripts.remove_items")
local Message      = require "scripts.MQ"

local function items_to_place_this(ghost)
  local items = {}
  for _, item in pairs(ghost.ghost_prototype.items_to_place_this or {}) do
    table.insert(items, { name = item.name, count = item.count })
  end
  return items
end

---@param tile_ghost LuaEntity|nil
---@param inventories LuaInventory[]|nil
---@return Message messages error messages on failure
local function revive_tile(tile_ghost, inventories)
  local messages = Message:new()
  inventories = inventories or {}
  if not tile_ghost then return messages:add "rail-layer-error.no-tile-to-place" end

  local items = #inventories > 0 and items_to_place_this(tile_ghost) or {}
  messages:add(remove_items(inventories, items, true))
  if #messages > 0 then return messages end

  local collide, revived, proxy = tile_ghost.revive { raise_revive = true }
  if not collide then return messages:add "rail-layer.revive-error" end

  remove_items(inventories, items)

  return messages
end

return revive_tile
