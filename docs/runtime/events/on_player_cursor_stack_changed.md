# Event: on_player_cursor_stack_changed

Called after a player's [cursor stack](runtime:LuaControl::cursor_stack) changed in some way.  This
is fired in the same tick that the change happens, but not instantly.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
