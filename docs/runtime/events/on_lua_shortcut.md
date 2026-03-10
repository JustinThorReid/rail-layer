# Event: on_lua_shortcut

Called when a custom [Lua shortcut](prototype:ShortcutPrototype) is pressed.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `prototype_name` | `string` | no | Shortcut prototype name of the shortcut that was clicked. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
