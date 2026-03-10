# Event: CustomInputEvent

Called when a [CustomInputPrototype](prototype:CustomInputPrototype) is activated.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player that activated the custom input. |
| `input_name` | `string` | no | The prototype name of the custom input that was activated. |
| `cursor_position` | `MapPosition` | no | The mouse cursor position when the custom input was activated. |
| `cursor_direction` | `defines.direction` | yes | Cursor direction. |
| `cursor_display_location` | `GuiLocation` | no | The mouse cursor display location when the custom input was activated. |
| `selected_prototype` | `SelectedPrototypeData` | yes | Information about the prototype that is selected when the custom input is used. Needs to be enabled on the custom inp... |
| `element` | `LuaGuiElement` | yes | The GUI element under the cursor when the custom input was activated. |
| `in_gui` | `boolean` | no | If the cursor was over any GUI when the custom input was activated. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |

## Examples

```lua
```
-- This will be raised when a custom input with the name "my-potato-control" and action "lua" is pressed
script.on_event("my-potato-control", function(event)
  game.print("Keyboard shortcut pressed on tick: " ..tostring(event.tick))
end)
```
```
