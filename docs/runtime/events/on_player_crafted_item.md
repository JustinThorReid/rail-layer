# Event: on_player_crafted_item

Called when the player finishes crafting an item. This event fires just before the results are
inserted into the player's inventory, not when the crafting is queued (see
[on_pre_player_crafted_item](runtime:on_pre_player_crafted_item)).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_stack` | `LuaItemStack` | no | The item that has been crafted. |
| `player_index` | `uint32` | no | The player doing the crafting. |
| `recipe` | `LuaRecipe` | no | The recipe used to craft this item. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
