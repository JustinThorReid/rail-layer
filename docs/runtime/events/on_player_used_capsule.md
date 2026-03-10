# Event: on_player_used_capsule

Called when a player uses a capsule that results in some game action.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player. |
| `item` | `LuaItemPrototype` | no | The capsule item used. |
| `quality` | `LuaQualityPrototype` | no | The quality of the capsule item used. |
| `position` | `MapPosition` | no | The position the capsule was used. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
