# LuaParticlePrototype

Prototype of an optimized particle.

## Attributes

### `regular_trigger_effect` — `TriggerEffectItem` (read-only)

### `ended_in_water_trigger_effect` — `TriggerEffectItem` (read-only)

### `ended_on_ground_trigger_effect` — `TriggerEffectItem` (read-only)

### `render_layer` — `RenderLayer` (read-only)

### `render_layer_when_on_ground` — `RenderLayer` (read-only)

### `fade_out_time` — `uint32` (read-only)

### `life_time` — `uint32` (read-only)

### `regular_trigger_effect_frequency` — `uint32` (read-only)

### `movement_modifier_when_on_ground` — `float` (read-only)

### `movement_modifier` — `float` (read-only)

### `vertical_acceleration` — `float` (read-only)

### `mining_particle_frame_speed` — `float` (read-only)

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
