# Event: on_robot_mined_tile

Called after a robot mines tiles.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `robot` | `LuaEntity` | no | The robot. |
| `tiles` | `array[OldTileAndPosition]` | no | The position data. |
| `surface_index` | `uint32` | no | The surface the tile(s) were mined on. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
