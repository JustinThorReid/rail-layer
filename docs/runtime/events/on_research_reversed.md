# Event: on_research_reversed

Called when a research is reversed (unresearched).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `research` | `LuaTechnology` | no | The technology un-researched |
| `by_script` | `boolean` | no | If the technology was un-researched by script. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
