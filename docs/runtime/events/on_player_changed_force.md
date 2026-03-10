# Event: on_player_changed_force

Called after a player changes forces.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player who changed forces. |
| `force` | `LuaForce` | no | The old force. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
