# Event: on_cargo_pod_delivered_cargo

Called after a cargo pod has delivered its cargo.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `cargo_pod` | `LuaEntity` | no |  |
| `spawned_container` | `LuaEntity` | yes | The spawned container if any. Created when destination type is [surface](runtime:defines.cargo_destination.surface). |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
