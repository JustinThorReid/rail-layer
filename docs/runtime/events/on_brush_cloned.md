# Event: on_brush_cloned

Called when a set of positions on the map is cloned.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source_offset` | `TilePosition` | no |  |
| `destination_offset` | `TilePosition` | no |  |
| `source_surface` | `LuaSurface` | no |  |
| `source_positions` | `array[TilePosition]` | no |  |
| `destination_surface` | `LuaSurface` | no |  |
| `destination_force` | `LuaForce` | yes |  |
| `clone_tiles` | `boolean` | no |  |
| `clone_entities` | `boolean` | no |  |
| `clone_decoratives` | `boolean` | no |  |
| `clear_destination_entities` | `boolean` | no |  |
| `clear_destination_decoratives` | `boolean` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
