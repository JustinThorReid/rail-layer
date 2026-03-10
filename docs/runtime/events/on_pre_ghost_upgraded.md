# Event: on_pre_ghost_upgraded

Called before a ghost entity is upgraded.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player that did the upgrade if any. |
| `ghost` | `LuaEntity` | no |  |
| `target` | `LuaEntityPrototype` | no |  |
| `quality` | `LuaQualityPrototype` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
