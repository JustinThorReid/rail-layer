# Event: on_player_left_game

Called after a player leaves the game. This is not called when closing a save file in singleplayer,
as the player doesn't actually leave the game, and the save is just on pause until they rejoin.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `reason` | `defines.disconnect_reason` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
