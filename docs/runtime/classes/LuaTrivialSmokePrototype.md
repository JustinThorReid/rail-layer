# LuaTrivialSmokePrototype

Prototype of a trivial smoke.

## Attributes

### `color` — `Color` (read-only)

### `start_scale` — `double` (read-only)

### `end_scale` — `double` (read-only)

### `movement_slow_down_factor` — `double` (read-only)

### `duration` — `uint32` (read-only)

### `spread_duration` — `uint32` (read-only)

### `fade_away_duration` — `uint32` (read-only)

### `fade_in_duration` — `uint32` (read-only)

### `glow_fade_away_duration` — `uint32` (read-only)

### `cyclic` — `boolean` (read-only)

### `affected_by_wind` — `boolean` (read-only)

### `show_when_smoke_off` — `boolean` (read-only)

### `glow_animation` — `boolean` (read-only)

### `render_layer` — `RenderLayer` (read-only)

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
