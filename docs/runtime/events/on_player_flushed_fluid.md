# Event: on_player_flushed_fluid

Called after player flushed fluid

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | Index of the player |
| `fluid` | `string` | no | Name of a fluid that was flushed |
| `amount` | `double` | no | Amount of fluid that was removed |
| `entity` | `LuaEntity` | no | Entity from which flush was performed |
| `only_this_entity` | `boolean` | no | True if flush was requested only on this entity |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
