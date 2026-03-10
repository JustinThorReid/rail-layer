# Event: on_cargo_pod_finished_ascending

Called when a cargo pod departs a surface.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `cargo_pod` | `LuaEntity` | no |  |
| `launched_by_rocket` | `boolean` | no | True for pods spawned on a rocket. This event triggers for platform and modded pods as well, but only when true will ... |
| `player_index` | `uint32` | yes | The player that is riding the cargo pod, if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
