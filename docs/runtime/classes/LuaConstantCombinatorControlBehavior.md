# LuaConstantCombinatorControlBehavior

Control behavior for constant combinators.

## Attributes

### `enabled` — `boolean`

Turns this constant combinator on and off.

### `sections` — `array[LuaLogisticSection]` (read-only)

All logistic sections of this constant combinator.

### `sections_count` — `uint32` (read-only)

Amount of logistic sections this constant combinator has.

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

### `add_section(?group: string) -> LuaLogisticSection`

Adds a new logistic section to this constant combinator if possible.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `group` | `string` | yes | The group to assign this section to. |

**Returns:**

- `LuaLogisticSection` — Logistic section if added.

### `remove_section(section_index: uint32) -> boolean`

Removes the given logistic section if possible. Removal may fail if the section index is out of
range or the section is not [manual](runtime:LuaLogisticSection::is_manual).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `section_index` | `uint32` | no | Index of the section. |

**Returns:**

- `boolean` — Whether section was removed.

### `get_section(section_index: uint32) -> LuaLogisticSection`

Gets section on the selected index, if it exists.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `section_index` | `uint32` | no | Index of the section. |

**Returns:**

- `LuaLogisticSection` — 
