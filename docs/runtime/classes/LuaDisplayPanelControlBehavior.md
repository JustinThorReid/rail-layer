# LuaDisplayPanelControlBehavior

Control behavior for display panels.

## Attributes

### `messages` — `array[DisplayPanelMessageDefinition]`

The full list of configured messages.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

## Methods

### `get_message(index: uint32) -> DisplayPanelMessageDefinition`

Get a specific message definition

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | Message index. |

**Returns:**

- `DisplayPanelMessageDefinition` — The message definition at the specified index.

### `set_message(index: int32, message: DisplayPanelMessageDefinition | nil)`

Set the message at the specified index

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `int32` | no | Message index. Use `-1` to append new element. |
| `message` | `DisplayPanelMessageDefinition | nil` | no | The message definition for the specified index. Specify `nil` to remove the message. |
