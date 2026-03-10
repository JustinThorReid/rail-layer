# Event: on_robot_exploded_cliff

Called directly after a robot explodes cliffs.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `robot` | `LuaEntity` | no |  |
| `item` | `LuaItemPrototype` | no | The cliff explosive used. |
| `quality` | `LuaQualityPrototype` | no | The quality of the cliff explosive used. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
