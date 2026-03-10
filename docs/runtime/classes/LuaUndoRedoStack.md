# LuaUndoRedoStack

The undo queue for a player. The term `item_index` refers to the index of an undo item in the queue,
while `action_index` refers to the index of one of the individual actions that make up an undo item.
Items are added to the undo queue through player actions and Lua methods that emulate player actions
like [LuaEntity::order_upgrade](runtime:LuaEntity::order_upgrade).

## Attributes

### `player_index` — `uint32` (read-only)

The index of the player to whom this stack belongs to.

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

### `get_undo_item(index: uint32) -> array[UndoRedoAction]`

Gets an undo item from the undo stack.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the undo item to get, ordered from most recent to oldest. |

**Returns:**

- `array[UndoRedoAction]` — 

### `get_undo_item_count() -> uint32`

The number undo items in the undo stack.

**Returns:**

- `uint32` — 

### `remove_undo_item(index: uint32)`

Removes an undo item from the undo stack.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the undo item to remove, ordered from most recent to oldest. |

### `remove_undo_action(item_index: uint32, action_index: uint32)`

Removes an undo action from the specified undo item on the undo stack.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_index` | `uint32` | no | The index of the undo item to change, ordered from most recent to oldest. |
| `action_index` | `uint32` | no | The index of the undo action to remove. |

### `get_redo_item(index: uint32) -> array[UndoRedoAction]`

Gets an undo item from the redo stack.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the item to get, ordered from most recent to oldest. |

**Returns:**

- `array[UndoRedoAction]` — 

### `get_redo_item_count() -> uint32`

The number of undo items in the redo stack.

**Returns:**

- `uint32` — 

### `remove_redo_item(index: uint32)`

Removes an undo item from the redo stack.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the undo item to remove, ordered from most recent to oldest. |

### `remove_redo_action(item_index: uint32, action_index: uint32)`

Removes an undo action from the specified undo item on the redo stack.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_index` | `uint32` | no | The index of the undo item to change, ordered from most recent to oldest. |
| `action_index` | `uint32` | no | The index of the undo action to remove. |

### `get_undo_tags(item_index: uint32, action_index: uint32) -> Tags`

Gets all tags for the given undo action.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_index` | `uint32` | no | The index of the undo item, ordered from most recent to oldest. |
| `action_index` | `uint32` | no | The index of the undo action. |

**Returns:**

- `Tags` — 

### `get_undo_tag(item_index: uint32, action_index: uint32, tag_name: string) -> AnyBasic`

Gets the tag with the given name from a specific undo item action, or `nil` if it doesn't exist.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_index` | `uint32` | no | The index of the undo item, ordered from most recent to oldest. |
| `action_index` | `uint32` | no | The index of the undo action. |
| `tag_name` | `string` | no | The name of the tag to get. |

**Returns:**

- `AnyBasic` — 

### `set_undo_tag(item_index: uint32, action_index: uint32, tag_name: string, tag: AnyBasic)`

Sets a new tag with the given name and value on the specified undo item action.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_index` | `uint32` | no | The index of the undo item, ordered from most recent to oldest. |
| `action_index` | `uint32` | no | The index of the undo action. |
| `tag_name` | `string` | no | The name of the tag to set. |
| `tag` | `AnyBasic` | no | The contents of the new tag. |

### `remove_undo_tag(item_index: uint32, action_index: uint32, tag: string) -> boolean`

Removes a tag with the given name from the specified undo item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_index` | `uint32` | no | The index of the undo item, ordered from most recent to oldest. |
| `action_index` | `uint32` | no | The index of the undo action. |
| `tag` | `string` | no | The name of the tag to remove. |

**Returns:**

- `boolean` — Whether the tag existed and was successfully removed.

### `get_redo_tags(item_index: uint32, action_index: uint32) -> Tags`

Gets all tags for the given redo action.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_index` | `uint32` | no | The index of the redo item, ordered from most recent to oldest. |
| `action_index` | `uint32` | no | The index of the redo action. |

**Returns:**

- `Tags` — 

### `get_redo_tag(item_index: uint32, action_index: uint32, tag_name: string) -> AnyBasic`

Gets the tag with the given name from a specific redo item action, or `nil` if it doesn't exist.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_index` | `uint32` | no | The index of the redo item, ordered from most recent to oldest. |
| `action_index` | `uint32` | no | The index of the redo action. |
| `tag_name` | `string` | no | The name of the tag to get. |

**Returns:**

- `AnyBasic` — 

### `set_redo_tag(item_index: uint32, action_index: uint32, tag_name: string, tag: AnyBasic)`

Sets a new tag with the given name and value on the specified redo item action.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_index` | `uint32` | no | The index of the redo item, ordered from most recent to oldest. |
| `action_index` | `uint32` | no | The index of the redo action. |
| `tag_name` | `string` | no | The name of the tag to set. |
| `tag` | `AnyBasic` | no | The contents of the new tag. |

### `remove_redo_tag(item_index: uint32, action_index: uint32, tag: string) -> boolean`

Removes a tag with the given name from the specified redo item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_index` | `uint32` | no | The index of the redo item, ordered from most recent to oldest. |
| `action_index` | `uint32` | no | The index of the redo action. |
| `tag` | `string` | no | The name of the tag to remove. |

**Returns:**

- `boolean` — Whether the tag existed and was successfully removed.
