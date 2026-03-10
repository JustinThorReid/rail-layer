# LuaLampControlBehavior

Control behavior for lamps.

## Attributes

### `use_colors` — `boolean`

`true` if the lamp should set the color from the circuit network signals.

### `color_mode` — `defines.control_behavior.lamp.color_mode`

### `red_signal` — `SignalID` *(optional)*

### `green_signal` — `SignalID` *(optional)*

### `blue_signal` — `SignalID` *(optional)*

### `rgb_signal` — `SignalID` *(optional)*

### `color` — `Color` (read-only) *(optional)*

The color the lamp is showing, if any.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
