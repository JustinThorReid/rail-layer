# LuaGroup

Item group or subgroup.

## Attributes

### `name` — `string` (read-only)

### `localised_name` — `LocalisedString` (read-only)

Localised name of the group.

### `type` — `string` (read-only)

### `group` — `LuaGroup` (read-only)

The parent group.

### `subgroups` — `array[LuaGroup]` (read-only)

Subgroups of this group.

### `order_in_recipe` — `string` (read-only)

The additional order value used in recipe ordering.

### `order` — `string` (read-only)

The string used to alphabetically sort these prototypes. It is a simple string that has no
additional semantic meaning.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
