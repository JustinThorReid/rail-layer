# Event: on_spider_command_completed

Called when a spider finishes moving to its autopilot position.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `vehicle` | `LuaEntity` | no | Spider vehicle which was requested to move. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
