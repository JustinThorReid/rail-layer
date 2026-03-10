# Event: on_unit_removed_from_group

Called when a unit is removed from a unit group.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `unit` | `LuaEntity` | no |  |
| `group` | `LuaCommandable` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
