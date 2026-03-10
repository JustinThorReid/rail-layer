# LuaPermissionGroup

A permission group that defines what players in this group are allowed to do.

## Attributes

### `name` — `string`

The name of this group. Setting the name to `nil` or an empty string sets the name to the default
value.

### `players` — `array[LuaPlayer]` (read-only)

The players in this group.

### `group_id` — `uint32` (read-only)

The group ID

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

### `add_player(player: PlayerIdentification) -> boolean`

Adds the given player to this group.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification` | no |  |

**Returns:**

- `boolean` — Whether the player was added.

### `remove_player(player: PlayerIdentification) -> boolean`

Removes the given player from this group.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification` | no |  |

**Returns:**

- `boolean` — Whether the player was removed.

### `allows_action(action: defines.input_action) -> boolean`

Whether this group allows the given action.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `action` | `defines.input_action` | no | The action in question. |

**Returns:**

- `boolean` — 

### `set_allows_action(action: defines.input_action, allow_action: boolean) -> boolean`

Sets whether this group allows the performance the given action.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `action` | `defines.input_action` | no | The action in question. |
| `allow_action` | `boolean` | no | Whether to allow the specified action. |

**Returns:**

- `boolean` — Whether the value was successfully applied.

### `destroy() -> boolean`

Destroys this group.

**Returns:**

- `boolean` — Whether the group was successfully destroyed.
