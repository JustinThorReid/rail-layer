# Event: on_robot_pre_mined

Called before a robot mines an entity.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `robot` | `LuaEntity` | no | The robot that's about to do the mining. |
| `entity` | `LuaEntity` | no | The entity which is about to be mined. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
