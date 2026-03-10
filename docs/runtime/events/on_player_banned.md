# Event: on_player_banned

Called when a player is banned.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player banned. |
| `player_name` | `string` | no | The banned player name. |
| `by_player` | `uint32` | yes | The player that did the banning if any. |
| `reason` | `string` | yes | The reason given if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
