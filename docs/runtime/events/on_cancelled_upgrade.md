# Event: on_cancelled_upgrade

Called when the upgrade of an entity is canceled.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no |  |
| `player_index` | `uint32` | yes |  |
| `target` | `LuaEntityPrototype` | no |  |
| `quality` | `LuaQualityPrototype` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
