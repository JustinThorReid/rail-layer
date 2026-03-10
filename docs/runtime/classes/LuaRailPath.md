# LuaRailPath

A rail path.

## Attributes

### `size` — `uint32` (read-only)

The total number of rails in this path.

### `current` — `uint32` (read-only)

The current rail index.

### `total_distance` — `double` (read-only)

The total path distance.

### `travelled_distance` — `double` (read-only)

The total distance traveled.

### `rails` — `LuaCustomTable` (read-only)

Array of the rails that this path travels over.

### `is_front` — `boolean` (read-only)

If the path goes from the front of the train

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
