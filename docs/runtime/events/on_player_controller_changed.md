# Event: on_player_controller_changed

Called after a player changes controller types.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player who changed controllers. |
| `old_type` | `defines.controllers` | no | The old controller type. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
