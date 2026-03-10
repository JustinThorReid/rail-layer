# Event: on_cargo_pod_finished_descending

Called when a cargo pods lands on a surface, either at a station or on the ground.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `cargo_pod` | `LuaEntity` | no |  |
| `launched_by_rocket` | `boolean` | no | True for pods spawned on a rocket. |
| `player_index` | `uint32` | yes | The player that is riding the cargo pod, if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
