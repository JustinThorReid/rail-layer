# Event: on_gui_elem_changed

Called when [LuaGuiElement](runtime:LuaGuiElement) element value is changed (related to choose
element buttons).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The element whose element value changed. |
| `player_index` | `uint32` | no | The player who did the change. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
