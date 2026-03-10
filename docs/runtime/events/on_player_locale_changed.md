# Event: on_player_locale_changed

Called when a player's active locale changes. See [LuaPlayer::locale](runtime:LuaPlayer::locale).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player whose locale was changed. |
| `old_locale` | `string` | no | The previously active locale. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
