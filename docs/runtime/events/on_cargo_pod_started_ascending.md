# Event: on_cargo_pod_started_ascending

Called when a cargo pod departs from a space platform hub or by another method not attached to a
rocket.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `cargo_pod` | `LuaEntity` | no |  |
| `player_index` | `uint32` | yes | The player that is riding the cargo pod, if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
