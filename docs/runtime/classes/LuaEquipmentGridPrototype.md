# LuaEquipmentGridPrototype

Prototype of an equipment grid.

## Attributes

### `equipment_categories` — `array[string]` (read-only)

Equipment category names for the [categories](runtime:LuaEquipmentPrototype::equipment_categories)
that may be inserted into this equipment grid. The grid will accept any equipment that has at least
one category in this list.

### `width` — `uint32` (read-only)

### `height` — `uint32` (read-only)

### `locked` — `boolean` (read-only)

If the player can move equipment into or out of this grid.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
