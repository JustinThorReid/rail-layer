# Event: on_unit_group_created

Called when a new unit group is created, before any members are added to it.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `group` | `LuaCommandable` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
