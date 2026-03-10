# Event: on_research_queued

Called when research is queued.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `research` | `LuaTechnology` | no | The technology queued |
| `force` | `LuaForce` | no | The force whose research was queued. |
| `player_index` | `uint32` | yes | The player who queued the research if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
