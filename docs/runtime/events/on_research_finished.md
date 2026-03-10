# Event: on_research_finished

Called when a research finishes.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `research` | `LuaTechnology` | no | The researched technology |
| `by_script` | `boolean` | no | If the technology was researched by script. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
