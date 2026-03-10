# Event: on_string_translated

Called when a translation request generated through
[LuaPlayer::request_translation](runtime:LuaPlayer::request_translation) or
[LuaPlayer::request_translations](runtime:LuaPlayer::request_translations) has been completed.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player whose locale was used for the translation. |
| `localised_string` | `LocalisedString` | no | The localised string being translated. |
| `result` | `string` | no | The translated `localised_string`. |
| `id` | `uint32` | no | The unique id for this translation request. |
| `translated` | `boolean` | no | Whether the requested localised string was valid and could be translated. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
