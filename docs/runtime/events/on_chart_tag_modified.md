# Event: on_chart_tag_modified

Called when a chart tag is modified by a player or by script.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tag` | `LuaCustomChartTag` | no |  |
| `player_index` | `uint32` | yes |  |
| `force` | `LuaForce` | no |  |
| `old_text` | `string` | no |  |
| `old_icon` | `SignalID` | no |  |
| `old_position` | `MapPosition` | no |  |
| `old_surface` | `LuaSurface` | no |  |
| `old_player_index` | `uint32` | yes |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
