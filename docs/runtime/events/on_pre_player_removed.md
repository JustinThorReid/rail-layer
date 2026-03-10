# Event: on_pre_player_removed

Called before a player is removed (deleted) from the game. This is markedly different from a player
temporarily [leaving](runtime:on_player_left_game) the game, and instead behaves like the player
never existed in the save file.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The index of the removed player. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
