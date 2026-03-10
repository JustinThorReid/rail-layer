# LuaCargoHatch

A cargo hatch.

## Attributes

### `owner` — `LuaEntity` (read-only)

### `busy` — `boolean` (read-only)

### `reserved` — `boolean` (read-only)

### `is_input_compatible` — `boolean` (read-only)

### `is_output_compatible` — `boolean` (read-only)

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

### `create_cargo_pod() -> LuaEntity`

Creates a cargo pod for output at the owning entity hatch location.

**Returns:**

- `LuaEntity` — 
