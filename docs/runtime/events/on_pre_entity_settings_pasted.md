# Event: on_pre_entity_settings_pasted

Called before entity copy-paste is done.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `source` | `LuaEntity` | no | The source entity settings will be copied from. |
| `destination` | `LuaEntity` | no | The destination entity settings will be copied to. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
