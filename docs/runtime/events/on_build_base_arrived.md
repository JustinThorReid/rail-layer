# Event: on_build_base_arrived

Called when a [defines.command.build_base](runtime:defines.command.build_base) command reaches its
destination, and before building starts.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `unit` | `LuaEntity` | yes | The unit the command was assigned to. |
| `group` | `LuaCommandable` | yes | The unit group the command was assigned to. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
