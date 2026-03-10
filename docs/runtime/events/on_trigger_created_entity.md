# Event: on_trigger_created_entity

Called when an entity with a trigger prototype (such as capsules) create an entity AND that trigger
prototype defined `trigger_created_entity=true`.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no |  |
| `source` | `LuaEntity` | yes |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
