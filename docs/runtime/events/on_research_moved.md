# Event: on_research_moved

Called when research is moved forwards or backwards in the research queue.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `LuaForce` | no | The force whose research was re-arranged. |
| `player_index` | `uint32` | yes | The player who did the re-arranging if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
