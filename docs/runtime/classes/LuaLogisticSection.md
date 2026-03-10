# LuaLogisticSection

Logistic section of a particular [LuaLogisticPoint](runtime:LuaLogisticPoint) or
[LuaConstantCombinatorControlBehavior](runtime:LuaConstantCombinatorControlBehavior).

## Attributes

### `owner` — `LuaEntity` (read-only)

The [LuaEntity](runtime:LuaEntity) owner of this LuaLogisticSection.

### `index` — `uint32` (read-only)

The section index of this section.

### `filters` — `array[LogisticFilter]`

The logistic filters for this section.  This can only be written to when the section [is
manual](runtime:LuaLogisticSection::is_manual).

### `filters_count` — `uint32` (read-only)

Amount of filters this section has

### `group` — `string`

The group this section belongs to.  An empty string when in no group.  This can only be written to
when the section [is manual](runtime:LuaLogisticSection::is_manual).

### `type` — `defines.logistic_section_type` (read-only)

The type of this logistic section. Sections that are not manual are controlled by game itself and
may not be allowed to be changed by script.

### `is_manual` — `boolean` (read-only)

Shortcut to check whether [LuaLogisticSection::type](runtime:LuaLogisticSection::type) is equal to
[manual](runtime:defines.logistic_section_type.manual).

### `active` — `boolean`

Whether this section is active. This can only be written to when the section [is
manual](runtime:LuaLogisticSection::is_manual).

### `multiplier` — `float`

Multiplier applied to all filters before they are used by game. This can only be written to when the
section [is manual](runtime:LuaLogisticSection::is_manual).

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

### `set_slot(slot_index: LogisticFilterIndex, filter: LogisticFilter) -> LogisticFilterIndex`

Sets logistic request and auto-trash slot to the given value.  This will silently fail if personal
logistics are not researched yet.  This can only be called when the section [is
manual](runtime:LuaLogisticSection::is_manual).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `slot_index` | `LogisticFilterIndex` | no | Index of a slot to set. |
| `filter` | `LogisticFilter` | no | The details of the filter to set. |

**Returns:**

- `LogisticFilterIndex` — The existing index for the given filter or nil if the filter was successfully set.

### `get_slot(slot_index: LogisticFilterIndex) -> LogisticFilter`

Gets current settings of logistic request and auto-trash from the given slot.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `slot_index` | `LogisticFilterIndex` | no | Index of a slot to read. |

**Returns:**

- `LogisticFilter` — 

### `clear_slot(slot_index: LogisticFilterIndex)`

Clears the logistic request and auto-trash from the given slot.  This can only be called when the
section [is manual](runtime:LuaLogisticSection::is_manual).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `slot_index` | `LogisticFilterIndex` | no | Index of a slot to clear. |
