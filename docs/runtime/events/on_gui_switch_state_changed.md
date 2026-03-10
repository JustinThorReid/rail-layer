# Event: on_gui_switch_state_changed

Called when [LuaGuiElement](runtime:LuaGuiElement) switch state is changed (related to switches).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The switch whose switch state changed. |
| `player_index` | `uint32` | no | The player who did the change. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
