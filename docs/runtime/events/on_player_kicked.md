# Event: on_player_kicked

Called when a player is kicked.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player kicked. |
| `by_player` | `uint32` | yes | The player that did the kicking if any. |
| `reason` | `string` | yes | The reason given if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
