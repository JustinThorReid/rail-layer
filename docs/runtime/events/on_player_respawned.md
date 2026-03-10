# Event: on_player_respawned

Called after a player respawns.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `player_port` | `LuaEntity` | yes | The player port used to respawn if one was used. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
