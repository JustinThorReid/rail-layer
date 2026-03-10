# Event: on_combat_robot_expired

Called when a combat robot expires through a lack of energy, or timeout.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `robot` | `LuaEntity` | no |  |
| `owner` | `LuaEntity` | yes | The entity that owns the robot if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
