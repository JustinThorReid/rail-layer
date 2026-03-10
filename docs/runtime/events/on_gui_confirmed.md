# Event: on_gui_confirmed

Called when a [LuaGuiElement](runtime:LuaGuiElement) is confirmed, for example by pressing Enter in
a textfield.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The confirmed element. |
| `player_index` | `uint32` | no | The player who did the confirming. |
| `alt` | `boolean` | no | If alt was pressed. |
| `control` | `boolean` | no | If control was pressed. |
| `shift` | `boolean` | no | If shift was pressed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
