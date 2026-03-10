# LuaLogisticPoint

Logistic point of a particular [LuaEntity](runtime:LuaEntity). A "Logistic point" is the name given
for settings and properties used by requester, provider, and storage points in a given logistic
network. These "points" don't have to be a logistic container but often are. One other entity that
can own several points is the "character" character type entity.

## Attributes

### `owner` — `LuaEntity` (read-only)

The [LuaEntity](runtime:LuaEntity) owner of this LuaLogisticPoint.

### `logistic_network` — `LuaLogisticNetwork` (read-only)

### `logistic_member_index` — `defines.logistic_member_index` (read-only)

The Logistic member index of this logistic point.

### `filters` — `array[CompiledLogisticFilter]` (read-only) *(optional)*

The logistic filters for this logistic point, if this uses any.  The returned array will always have
an entry for each filter and will be indexed in sequence when not `nil`.

### `mode` — `defines.logistic_mode` (read-only)

The logistic mode.

### `force` — `LuaForce` (read-only)

The force of this logistic point.  This will always be the same as the
[LuaLogisticPoint::owner](runtime:LuaLogisticPoint::owner) force.

### `targeted_items_pickup` — `ItemWithQualityCounts` (read-only)

Items targeted to be picked up from this logistic point by robots.

### `targeted_items_deliver` — `ItemWithQualityCounts` (read-only)

Items targeted to be dropped off into this logistic point by robots.

### `exact` — `boolean` (read-only)

If this logistic point is using the exact mode. In exact mode robots never over-deliver requests.

### `trash_not_requested` — `boolean`

Whether this logistic point is set to trash unrequested items.

### `enabled` — `boolean`

Whether this logistic point is active, related to disabling logistics on player/spidertron.  When
the logistic point is disabled it won't request and auto trash will do nothing.

### `sections` — `array[LuaLogisticSection]` (read-only)

All logistic sections of this logistic point.

### `sections_count` — `uint32` (read-only)

Amount of logistic sections this logistic point has.

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

Adds a new logistic section to this logistic point if possible.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `group` | `string` | yes | The group to assign this section to. |

**Returns:**

- `LuaLogisticSection` — The added logistic section.

### `remove_section(section_index: uint32) -> boolean`

Removes the given logistic section if possible. Removal may fail if the section index is out of
range or the section is not [manual](runtime:LuaLogisticSection::is_manual).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `section_index` | `uint32` | no | Index of the section |

**Returns:**

- `boolean` — Whether section was removed.

### `get_section(section_index: uint32) -> LuaLogisticSection`

Gets section on the selected index, if it exists

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `section_index` | `uint32` | no | Index of the section |

**Returns:**

- `LuaLogisticSection` — 
