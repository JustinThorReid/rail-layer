# Event: on_robot_mined

Called when a robot mines an entity.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `robot` | `LuaEntity` | no | The robot that did the mining. |
| `item_stack` | `ItemWithQualityCount` | no | The entity the robot just picked up. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
