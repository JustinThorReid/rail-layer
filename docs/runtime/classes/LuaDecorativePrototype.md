# LuaDecorativePrototype

Prototype of an optimized decorative.

## Attributes

### `collision_box` — `BoundingBox` (read-only)

The bounding box used for collision checking.

### `collision_mask` — `CollisionMask` (read-only)

The collision masks this decorative uses

### `autoplace_specification` — `AutoplaceSpecification` (read-only) *(optional)*

Autoplace specification for this decorative prototype, if any.

### `render_layer` — `RenderLayer` (read-only)

### `decal` — `boolean` (read-only)

### `grows_through_rail_path` — `boolean` (read-only)

### `trigger_effect` — `array[TriggerEffectItem]` (read-only) *(optional)*

### `placed_effect` — `array[TriggerEffectItem]` (read-only) *(optional)*

### `minimal_separation` — `double` (read-only)

### `target_count` — `uint32` (read-only)

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
