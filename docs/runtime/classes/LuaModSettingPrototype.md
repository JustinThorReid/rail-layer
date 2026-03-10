# LuaModSettingPrototype

Prototype of a mod setting.

## Attributes

### `mod` — `string` (read-only)

The mod that owns this setting.

### `setting_type` — `'startup' | 'runtime-global' | 'runtime-per-user'` (read-only)

### `default_value` — `boolean | double | int32 | string | Color` (read-only)

The default value of this setting.

### `minimum_value` — `double | int32` (read-only) *(optional)*

The minimum value for this setting. `nil` if this setting type doesn't support a minimum.

### `maximum_value` — `double | int32` (read-only) *(optional)*

The maximum value for this setting. `nil` if this setting type doesn't support a maximum.

### `allowed_values` — `array[string] | array[int32] | array[double]` (read-only) *(optional)*

The allowed values for this setting. `nil` if this setting doesn't use the a fixed set of values.

### `allow_blank` — `boolean` (read-only) *(optional)*

Whether this string setting allows blank values. `nil` if not a string setting.

### `auto_trim` — `boolean` (read-only) *(optional)*

Whether this string setting auto-trims values. `nil` if not a string setting

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
