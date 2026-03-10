# Event: on_gui_location_changed

Called when [LuaGuiElement](runtime:LuaGuiElement) element location is changed (related to frames in
`player.gui.screen`).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The element whose location changed. |
| `player_index` | `uint32` | no | The player who did the change. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
