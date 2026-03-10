# Event: on_gui_text_changed

Called when [LuaGuiElement](runtime:LuaGuiElement) text is changed by the player.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The edited element. |
| `player_index` | `uint32` | no | The player who did the edit. |
| `text` | `string` | no | The new text in the element. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
