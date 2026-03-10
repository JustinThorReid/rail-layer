# Event: on_player_deconstructed_area

Called when a player selects an area with a deconstruction planner.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player doing the selection. |
| `surface` | `LuaSurface` | no | The surface selected. |
| `area` | `BoundingBox` | no | The area selected. |
| `item` | `string` | no | The item used to select the area. |
| `stack` | `LuaItemStack` | yes | The item stack used to select the area. |
| `record` | `LuaRecord` | yes | The record that was used to select the area. |
| `quality` | `string` | no | The item quality used to select the area. |
| `alt` | `boolean` | no | If normal selection or alt selection was used. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
