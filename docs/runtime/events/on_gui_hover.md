# Event: on_gui_hover

Called when [LuaGuiElement](runtime:LuaGuiElement) is hovered by the mouse.  Only fired for events
whose [LuaGuiElement::raise_hover_events](runtime:LuaGuiElement::raise_hover_events) is `true`.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The element that is being hovered over. |
| `player_index` | `uint32` | no | The player whose cursor is hovering. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
