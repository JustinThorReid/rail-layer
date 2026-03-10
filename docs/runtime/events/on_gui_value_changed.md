# Event: on_gui_value_changed

Called when [LuaGuiElement](runtime:LuaGuiElement) slider value is changed (related to the slider
element).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The element whose value changed. |
| `player_index` | `uint32` | no | The player who did the change. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
