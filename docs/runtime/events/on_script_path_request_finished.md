# Event: on_script_path_request_finished

Called when a [LuaSurface::request_path](runtime:LuaSurface::request_path) call completes.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `path` | `array[PathfinderWaypoint]` | yes | The actual path that the pathfinder has determined. `nil` if pathfinding failed. |
| `id` | `uint32` | no | Handle to associate the callback with a particular call to [LuaSurface::request_path](runtime:LuaSurface::request_path). |
| `try_again_later` | `boolean` | no | Indicates that the pathfinder failed because it is too busy, and that you can retry later. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
