# LuaFluidBoxPrototype

A prototype of a fluidbox owned by some [LuaEntityPrototype](runtime:LuaEntityPrototype).

## Attributes

### `entity` — `LuaEntityPrototype` (read-only)

The entity that this belongs to.

### `index` — `uint32` (read-only)

The index of this fluidbox prototype in the owning entity.

### `pipe_connections` — `array[PipeConnectionDefinition]` (read-only)

The pipe connection points.

### `production_type` — `ProductionType` (read-only)

The production type.

### `volume` — `double` (read-only)

### `filter` — `LuaFluidPrototype` (read-only) *(optional)*

The filter, if any is set.

### `minimum_temperature` — `double` (read-only) *(optional)*

The minimum temperature, if any is set.

### `maximum_temperature` — `double` (read-only) *(optional)*

The maximum temperature, if any is set.

### `secondary_draw_orders` — `array[int32]` (read-only)

The secondary draw orders for the 4 possible connection directions.

### `render_layer` — `RenderLayer` (read-only)

The render layer.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
