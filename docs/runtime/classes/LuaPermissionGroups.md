# LuaPermissionGroups

All permission groups.

## Attributes

### `groups` — `array[LuaPermissionGroup]` (read-only)

All of the permission groups.

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

### `create_group(?name: string) -> LuaPermissionGroup`

Creates a new permission group.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | yes |  |

**Returns:**

- `LuaPermissionGroup` — `nil` if the calling player doesn't have permission to make groups.

### `get_group(group: string | uint32) -> LuaPermissionGroup`

Gets the permission group with the given name or group ID.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `group` | `string | uint32` | no |  |

**Returns:**

- `LuaPermissionGroup` — `nil` if there is no matching group.
