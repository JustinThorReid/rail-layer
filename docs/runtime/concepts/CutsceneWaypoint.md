# Concept: CutsceneWaypoint

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | yes | Position to pan the camera to. |
| `target` | `LuaEntity | LuaCommandable` | yes | Entity or unit group to pan the camera to. |
| `transition_time` | `uint32` | no | How many ticks it will take to reach this waypoint from the previous one. |
| `time_to_wait` | `uint32` | no | Time in ticks to wait before moving to the next waypoint. |
| `zoom` | `double` | yes | Zoom level to be set when the waypoint is reached. When not specified, the previous waypoint's zoom is used. |
