# Concept: EventData

Information about the event that has been raised. The table can also contain other fields depending
on the type of event. See [the list of Factorio events](runtime:events) for more information on
these.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `defines.events` | no | The identifier of the event this handler was registered to. |
| `tick` | `uint32` | no | The tick during which the event happened. |
| `mod_name` | `string` | yes | The name of the mod that raised the event if it was raised using [LuaBootstrap::raise_event](runtime:LuaBootstrap::ra... |
