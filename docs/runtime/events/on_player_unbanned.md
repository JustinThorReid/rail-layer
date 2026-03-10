# Event: on_player_unbanned

Called when a player is un-banned.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player un-banned. |
| `player_name` | `string` | no | The player name un-banned. |
| `by_player` | `uint32` | yes | The player that did the un-banning if any. |
| `reason` | `string` | yes | The reason the player was banned if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
