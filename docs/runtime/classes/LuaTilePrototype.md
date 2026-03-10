# LuaTilePrototype

Prototype of a tile.

## Attributes

### `collision_mask` — `CollisionMask` (read-only)

The collision mask this tile uses

### `layer` — `uint32` (read-only)

### `autoplace_specification` — `AutoplaceSpecification` (read-only) *(optional)*

Autoplace specification for this prototype, if any.

### `walking_speed_modifier` — `float` (read-only)

### `vehicle_friction_modifier` — `float` (read-only)

### `map_color` — `Color` (read-only)

### `decorative_removal_probability` — `float` (read-only)

The probability that decorative entities will be removed from on top of this tile when this tile is
generated.

### `automatic_neighbors` — `boolean` (read-only)

### `allowed_neighbors` — `dict[string, LuaTilePrototype]` (read-only)

### `needs_correction` — `boolean` (read-only)

If this tile needs correction logic applied when it's generated in the world.

### `mineable_properties` — `{minable: boolean, mining_particle: string, mining_time: double, products: array[Product]}` (read-only)

### `fluid` — `LuaFluidPrototype` (read-only) *(optional)*

The fluid offshore pump produces on this tile, if any.

### `next_direction` — `LuaTilePrototype` (read-only) *(optional)*

The next direction of this tile, if any. Used when a tile has multiple directions (such as hazard
concrete)

### `items_to_place_this` — `array[ItemToPlace]` (read-only) *(optional)*

Items that when placed will produce this tile, if any. Construction bots will choose the first item
in the list to build this tile.

### `can_be_part_of_blueprint` — `boolean` (read-only)

False if this tile is not allowed in blueprints regardless of the ability to build it.

### `absorptions_per_second` — `dict[string, double]` (read-only)

A table of pollution emissions per second this tile will absorb, indexed by the name of each
absorbed pollution type.

### `is_foundation` — `boolean` (read-only)

True if this tile can be used as a foundation for other tiles, false otherwise. Foundation tiles can
be [hidden](runtime:LuaTile::hidden_tile).

### `allows_being_covered` — `boolean` (read-only)

True if this tile can be [hidden](runtime:LuaTile::hidden_tile) or replaced by another tile through
player actions.

### `check_collision_with_entities` — `boolean` (read-only)

True if building this tile should check for colliding entities above and prevent building if such
are found. Also during mining tiles above this tile checks for entities colliding with this tile and
prevents mining if such are found.

### `destroys_dropped_items` — `boolean` (read-only)

### `max_health` — `float` (read-only)

### `weight` — `Weight` (read-only)

### `default_cover_tile` — `LuaTilePrototype` (read-only) *(optional)*

### `frozen_variant` — `LuaTilePrototype` (read-only) *(optional)*

### `thawed_variant` — `LuaTilePrototype` (read-only) *(optional)*

### `trigger_effect` — `array[TriggerEffectItem]` (read-only) *(optional)*

### `default_destroyed_dropped_item_trigger` — `array[TriggerItem]` (read-only) *(optional)*

### `scorch_mark_color` — `Color` (read-only) *(optional)*

### `bound_decoratives` — `array[LuaDecorativePrototype]` (read-only) *(optional)*

### `ambient_sounds_group` — `LuaTilePrototype` (read-only) *(optional)*

### `factoriopedia_alternative` — `LuaTilePrototype` (read-only) *(optional)*

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
