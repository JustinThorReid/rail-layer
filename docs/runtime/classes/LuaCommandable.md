# LuaCommandable

AI object which can be ordered commands. This can represent a UnitGroup (a set of multiple
commandables) or can be a single Unit or SpiderUnit.

## Attributes

### `is_unit_group` — `boolean` (read-only)

If this commandable is UnitGroup.

### `is_entity` — `boolean` (read-only)

If this commandable is Entity.

### `surface` — `LuaSurface` (read-only)

Surface this commandable is on.

### `position` — `MapPosition` (read-only)

Current position of this commandable.  If commandable is a UnitGroup, this can have different
meanings depending on the group state. When the group is gathering, the position is the place of
gathering. When the group is moving, the position is the expected position of its members along the
path. When the group is attacking, it is the average position of its members.

### `force` — `LuaForce` (read-only)

The force of this commandable.

### `unique_id` — `uint32` (read-only)

Unique identifier of this commandable.

### `has_command` — `boolean` (read-only)

If this commandable has a command assigned.

### `command` — `Command` (read-only) *(optional)*

The command of this commandable, if any.

### `distraction_command` — `Command` (read-only) *(optional)*

The distraction command of this commandable, if any.

### `parent_group` — `LuaCommandable` (read-only) *(optional)*

The unit group this commandable is a member of, if any.

### `spawner` — `LuaEntity` (read-only) *(optional)*

The spawner associated with this commandable, if any.

### `moving_state` — `defines.moving_state` (read-only)

Current moving state of the commandable's behavior

### `state` — `defines.group_state` (read-only)

Whether this group is gathering, moving or attacking.

### `members` — `array[LuaEntity]` (read-only)

All entity members of this unit group, recursive (if unit group is member of this unit group, its
members will be returned here).

### `commandable_members` — `array[LuaCommandable]` (read-only)

Non recursively returns all members of this unit group.

### `is_script_driven` — `boolean` (read-only)

Whether this unit group is controlled by a script or by the game engine. This can be changed using
[LuaCommandable::set_autonomous](runtime:LuaCommandable::set_autonomous). Units created by
[LuaSurface::create_unit_group](runtime:LuaSurface::create_unit_group) are considered script-driven.

### `entity` — `LuaEntity` (read-only)

Returns entity object for this commandable.

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

### `destroy()`

Destroys this commandable. If it is a unit group, members will not be destroyed, they will be merely
unlinked from the group.

### `set_command(command: Command)`

Give this commandable a command.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `command` | `Command` | no |  |

### `set_distraction_command(command: Command)`

Give this commandable a distraction command.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `command` | `Command` | no |  |

### `release_from_spawner()`

Release the commandable from the spawner. This allows the spawner to continue spawning additional
units.

### `add_member(member: LuaCommandable | LuaEntity)`

Adds a member to this UnitGroup. Has the same effect as setting defines.command.group command on the
member to join the group.  The member must have the same force be on the same surface as the group.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `member` | `LuaCommandable | LuaEntity` | no |  |

### `set_autonomous()`

Make this group autonomous. Autonomous groups will automatically attack polluted areas. Autonomous
groups aren't considered to be [script-driven](runtime:LuaCommandable::is_script_driven).

### `start_moving()`

Make the group start moving even if some of its members haven't yet arrived.
