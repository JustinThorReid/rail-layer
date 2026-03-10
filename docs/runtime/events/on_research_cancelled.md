# Event: on_research_cancelled

Called when research is cancelled.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `research` | `dict[string, uint32]` | no | A mapping of technology name to how many times it was cancelled. |
| `force` | `LuaForce` | no | The force whose research was cancelled. |
| `player_index` | `uint32` | yes | The player who cancelled the research if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
