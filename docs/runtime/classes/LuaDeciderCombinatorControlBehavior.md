# LuaDeciderCombinatorControlBehavior

Control behavior for decider combinators.

## Attributes

### `parameters` — `DeciderCombinatorParameters` *(optional)*

This decider combinator's parameters. Writing `nil` clears the combinator's parameters.

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

### `get_condition(index: uint32) -> DeciderCombinatorCondition`

Gets the condition at `index`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | Index of condition to get. |

**Returns:**

- `DeciderCombinatorCondition` — 

### `set_condition(index: uint32, condition: DeciderCombinatorCondition)`

Sets the condition at `index`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | Index of condition to modify. |
| `condition` | `DeciderCombinatorCondition` | no | Data to set selected condition to. |

### `add_condition(condition: DeciderCombinatorCondition, ?index: uint32)`

Adds a new condition.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `condition` | `DeciderCombinatorCondition` | no | New condition to insert. |
| `index` | `uint32` | yes | Index to insert new condition at. If not specified, appends to the end. |

### `remove_condition(index: uint32)`

Removes the condition at `index`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | Index of condition to remove. |

### `get_output(index: uint32) -> DeciderCombinatorOutput`

Gets the output at `index`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | Index of output to get. |

**Returns:**

- `DeciderCombinatorOutput` — 

### `set_output(index: uint32, output: DeciderCombinatorOutput)`

Sets the output at `index`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | Index of output to modify. |
| `output` | `DeciderCombinatorOutput` | no | Data to set selected output to. |

### `add_output(output: DeciderCombinatorOutput, ?index: uint32)`

Adds a new output.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `output` | `DeciderCombinatorOutput` | no | New output to insert. |
| `index` | `uint32` | yes | Index to insert new output at. If not specified, appends to the end. |

### `remove_output(index: uint32)`

Removes the output at `index`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | Index of output to remove. |
