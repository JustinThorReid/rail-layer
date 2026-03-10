# Event: on_research_started

Called when a technology research starts.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `research` | `LuaTechnology` | no | The technology being researched |
| `last_research` | `LuaTechnology` | yes |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
