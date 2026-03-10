# Event: on_technology_effects_reset

Called when [LuaForce::reset_technology_effects](runtime:LuaForce::reset_technology_effects) is
finished.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `LuaForce` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
