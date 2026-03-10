# Event: on_player_dropped_item

Called when a player drops an item on the ground.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `entity` | `LuaEntity` | no | The item-on-ground entity. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
