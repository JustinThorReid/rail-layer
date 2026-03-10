# Event: on_player_changed_surface

Called after a player changes surfaces.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player who changed surfaces. |
| `surface_index` | `uint32` | yes | The surface index the player was on - may be `nil` if the surface no longer exists. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
