# Event: on_player_cancelled_crafting

Called when a player cancels crafting.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player that did the crafting. |
| `items` | `LuaInventory` | no | The crafting items returned to the player's inventory. |
| `recipe` | `LuaRecipe` | no | The recipe that has been cancelled. |
| `cancel_count` | `uint32` | no | The number of crafts that have been cancelled. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
