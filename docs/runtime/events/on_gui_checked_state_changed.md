# Event: on_gui_checked_state_changed

Called when [LuaGuiElement](runtime:LuaGuiElement) checked state is changed (related to checkboxes
and radio buttons).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The element whose checked state changed. |
| `player_index` | `uint32` | no | The player who did the change. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
