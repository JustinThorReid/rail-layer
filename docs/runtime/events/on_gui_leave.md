# Event: on_gui_leave

Called when the player's cursor leaves a [LuaGuiElement](runtime:LuaGuiElement) that was previously
hovered.  Only fired for events whose
[LuaGuiElement::raise_hover_events](runtime:LuaGuiElement::raise_hover_events) is `true`.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The element that was being hovered. |
| `player_index` | `uint32` | no | The player whose cursor was hovering. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
