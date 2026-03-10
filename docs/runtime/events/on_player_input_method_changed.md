# Event: on_player_input_method_changed

Called when a player's input method changes. See
[LuaPlayer::input_method](runtime:LuaPlayer::input_method).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player whose input method changed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
