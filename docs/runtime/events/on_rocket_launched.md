# Event: on_rocket_launched

Called when a rocket finishes ascending. (Triggers listening for finished rocket launch past 2.0
have been moved to 'on_cargo_pod_finished_ascending' as rocket and cargo pod are two separate
entities)

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `rocket` | `LuaEntity` | no |  |
| `rocket_silo` | `LuaEntity` | yes |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
