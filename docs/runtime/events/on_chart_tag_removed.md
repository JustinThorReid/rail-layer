# Event: on_chart_tag_removed

Called just before a chart tag is deleted.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tag` | `LuaCustomChartTag` | no |  |
| `force` | `LuaForce` | no |  |
| `player_index` | `uint32` | yes |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
