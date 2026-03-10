# LuaFontPrototype

Prototype of a font.

## Attributes

### `name` — `string` (read-only)

Name of this prototype.

### `from` — `string` (read-only)

### `size` — `int32` (read-only)

### `spacing` — `float` (read-only)

### `border` — `boolean` (read-only)

### `filtered` — `boolean` (read-only)

### `border_color` — `Color` (read-only) *(optional)*

The border color, if any.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
