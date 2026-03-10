# Event: on_chart_tag_added

Called when a chart tag is created.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tag` | `LuaCustomChartTag` | no |  |
| `force` | `LuaForce` | no |  |
| `player_index` | `uint32` | yes |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
