# Event: on_area_cloned

Called when an area of the map is cloned.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source_surface` | `LuaSurface` | no |  |
| `source_area` | `BoundingBox` | no |  |
| `destination_surface` | `LuaSurface` | no |  |
| `destination_area` | `BoundingBox` | no |  |
| `destination_force` | `LuaForce` | yes |  |
| `clone_tiles` | `boolean` | no |  |
| `clone_entities` | `boolean` | no |  |
| `clone_decoratives` | `boolean` | no |  |
| `clear_destination_entities` | `boolean` | no |  |
| `clear_destination_decoratives` | `boolean` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
