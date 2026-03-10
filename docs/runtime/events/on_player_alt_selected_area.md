# Event: on_player_alt_selected_area

Called after a player alt-selects an area with a selection-tool item.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player doing the selection. |
| `surface` | `LuaSurface` | no | The surface selected. |
| `area` | `BoundingBox` | no | The area selected. |
| `item` | `string` | no | The item used to select the area. |
| `quality` | `string` | no | The item quality used to select the area. |
| `entities` | `array[LuaEntity]` | no | The entities selected. |
| `tiles` | `array[LuaTile]` | no | The tiles selected. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
