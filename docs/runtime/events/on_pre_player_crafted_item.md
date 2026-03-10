# Event: on_pre_player_crafted_item

Called when a player queues something to be crafted.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player doing the crafting. |
| `recipe` | `LuaRecipe` | no | The recipe being queued. |
| `items` | `LuaInventory` | no | The items removed from the players inventory to do the crafting. |
| `queued_count` | `uint32` | no | The number of times the recipe is being queued. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
