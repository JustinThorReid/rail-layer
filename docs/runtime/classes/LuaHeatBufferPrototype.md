# LuaHeatBufferPrototype

Prototype of a heat buffer.

## Attributes

### `max_temperature` — `double` (read-only)

### `default_temperature` — `double` (read-only)

### `specific_heat` — `double` (read-only)

### `max_transfer` — `double` (read-only)

### `min_temperature_gradient` — `double` (read-only)

### `min_working_temperature` — `double` (read-only)

### `minimum_glow_temperature` — `double` (read-only)

### `connections` — `array[HeatConnection]` (read-only)

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
