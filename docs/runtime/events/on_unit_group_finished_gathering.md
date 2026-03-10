# Event: on_unit_group_finished_gathering

Called when a unit group finishes gathering and starts executing its command.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `group` | `LuaCommandable` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
