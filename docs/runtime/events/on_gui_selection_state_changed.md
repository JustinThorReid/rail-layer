# Event: on_gui_selection_state_changed

Called when [LuaGuiElement](runtime:LuaGuiElement) selection state is changed (related to drop-downs
and listboxes).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The element whose selection state changed. |
| `player_index` | `uint32` | no | The player who did the change. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
