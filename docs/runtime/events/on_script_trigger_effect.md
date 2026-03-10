# Event: on_script_trigger_effect

Called when a script trigger effect is triggered.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `effect_id` | `string` | no | The effect_id specified in the trigger effect. |
| `surface_index` | `uint32` | no | The surface the effect happened on. |
| `source_position` | `MapPosition` | yes |  |
| `source_entity` | `LuaEntity` | yes |  |
| `target_position` | `MapPosition` | yes |  |
| `target_entity` | `LuaEntity` | yes |  |
| `cause_entity` | `LuaEntity` | yes | The entity that originally caused the sequence of triggers |
| `quality` | `string` | yes |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
