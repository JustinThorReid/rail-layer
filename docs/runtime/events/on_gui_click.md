# Event: on_gui_click

Called when [LuaGuiElement](runtime:LuaGuiElement) is clicked.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The clicked element. |
| `player_index` | `uint32` | no | The player who did the clicking. |
| `button` | `defines.mouse_button_type` | no | The mouse button used if any. |
| `cursor_display_location` | `GuiLocation` | no | The display location of the player's cursor. |
| `alt` | `boolean` | no | If alt was pressed. |
| `control` | `boolean` | no | If control was pressed. |
| `shift` | `boolean` | no | If shift was pressed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
