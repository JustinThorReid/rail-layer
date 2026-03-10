# LuaSurface

A "domain" of the world, such as a planet or space platform. Surfaces are uniquely identified by
their name. Every game contains at least the surface "nauvis".

## Attributes

### `name` — `string`

The name of this surface. Names are unique among surfaces.  The default surface can't be renamed.

### `index` — `uint32` (read-only)

This surface's index in [LuaGameScript::surfaces](runtime:LuaGameScript::surfaces) (unique ID). It
is assigned when a surface is created, and remains so until it is
[deleted](runtime:on_surface_deleted). Indexes of deleted surfaces can be reused.

### `map_gen_settings` — `MapGenSettings`

The generation settings for this surface. These can be modified after surface generation, but note
that this will not retroactively update the surface. To manually regenerate it,
[LuaSurface::regenerate_entity](runtime:LuaSurface::regenerate_entity),
[LuaSurface::regenerate_decorative](runtime:LuaSurface::regenerate_decorative), and
[LuaSurface::delete_chunk](runtime:LuaSurface::delete_chunk) can be used.

### `generate_with_lab_tiles` — `boolean`

When set to true, new chunks will be generated with lab tiles, instead of using the surface's map
generation settings.

### `always_day` — `boolean`

When set to true, the sun will always shine.

### `daytime` — `double`

Current time of day, as a number in range `[0, 1)`.

### `darkness` — `float` (read-only)

Amount of darkness at the current time, as a number in range `[0, 1]`.

### `wind_speed` — `double`

Current wind speed in tiles per tick.

### `wind_orientation` — `RealOrientation`

Current wind direction.

### `wind_orientation_change` — `double`

Change in wind orientation per tick.

### `peaceful_mode` — `boolean`

Is peaceful mode enabled on this surface?

### `no_enemies_mode` — `boolean`

Is no-enemies mode enabled on this surface?

### `freeze_daytime` — `boolean`

True if daytime is currently frozen.

### `ticks_per_day` — `uint32`

The number of ticks per day for this surface.

### `dusk` — `double`

The daytime when dusk starts.

### `dawn` — `double`

The daytime when dawn starts.

### `evening` — `double`

The daytime when evening starts.

### `morning` — `double`

The daytime when morning starts.

### `daytime_parameters` — `{dawn: double, dusk: double, evening: double, morning: double}`

Parameters of daytime. Equivalent as reading [dusk](runtime:LuaSurface::dusk),
[evening](runtime:LuaSurface::evening), [morning](runtime:LuaSurface::morning) and
[dawn](runtime:LuaSurface::dawn) at the same time.  In order for a write to take place, a new table
needs to be written in one go: changing individual members of the returned table has no effect as
those are value copies.

### `solar_power_multiplier` — `double`

The multiplier of solar power on this surface. Cannot be less than 0.

### `min_brightness` — `double`

The minimal brightness during the night. Defaults to `0.15`. This has an effect on both rendering
and game mechanics such as biter spawns and solar power.

### `brightness_visual_weights` — `ColorModifier`

Defines how surface daytime brightness influences each color channel of the current color lookup
table (LUT).  The LUT is multiplied by `((1 - weight) + brightness * weight)` and result is clamped
to range `[0, 1]`.  Default is `{0, 0, 0}`, which means no influence.

### `show_clouds` — `boolean`

If clouds are shown on this surface. If false, clouds are never shown. If true the player must also
have clouds enabled in graphics settings for them to be shown.

### `has_global_electric_network` — `boolean` (read-only)

Whether this surface currently has a global electric network.

### `platform` — `LuaSpacePlatform` (read-only) *(optional)*

### `planet` — `LuaPlanet` (read-only) *(optional)*

The planet associated with this surface, if there is one.  Use
[LuaPlanet::associate_surface](runtime:LuaPlanet::associate_surface) to create a new association
with a planet.

### `deletable` — `boolean` (read-only)

If this surface can be deleted.

### `global_effect` — `ModuleEffects` *(optional)*

Surface-wide effects applied to entities with effect receivers. `nil` if this surface is not using
surface-wide effect source.

### `pollutant_type` — `LuaAirbornePollutantPrototype` (read-only) *(optional)*

The type of pollutant enabled on the surface, or `nil` if no pollutant is enabled.

### `localised_name` — `LocalisedString` *(optional)*

Localised name of this surface. When set, will replace the internal surface name in places where a
player sees surface name.  Value may be ignored if a surface has a SpacePlatform or Planet object
attached to it, which take the precedence.

### `ignore_surface_conditions` — `boolean`

If surface condition checks should not be performed on this surface.

### `pollution_statistics` — `LuaFlowStatistics` (read-only)

The pollution statistics for this surface.

### `global_electric_network_statistics` — `LuaFlowStatistics` (read-only) *(optional)*

The global electric network statistics for this surface.

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

### `get_pollution(position: MapPosition) -> double`

Get the pollution for a given position.  Pollution is stored per chunk, so this will return the same
value for all positions in one chunk.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | The position to poll the chunk's pollution |

**Returns:**

- `double` — 

### `set_pollution(position: MapPosition, amount: double)`

Set the pollution for a given position.  Pollution changes by this are not included in pollution
statistics and do not affect evolution factors (as opposed to
[LuaSurface::pollute](runtime:LuaSurface::pollute)).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | The position to set the chunk's pollution |
| `amount` | `double` | no | New amount of pollution to be set on the chunk. Must be >= 0. |

### `can_place_entity(name: EntityID, position: MapPosition, ?direction: defines.direction, ?force: ForceID, ?build_check_type: defines.build_check_type, ?forced: boolean, ?inner_name: string) -> boolean`

Check for collisions with terrain or other entities.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `EntityID` | no | Name of the entity prototype to check. |
| `position` | `MapPosition` | no | Where the entity would be placed. |
| `direction` | `defines.direction` | yes | Direction of the placed entity. Defaults to `north`. |
| `force` | `ForceID` | yes | The force that would place the entity. Defaults to the `"neutral"` force. |
| `build_check_type` | `defines.build_check_type` | yes | Which type of check should be carried out. Defaults to `ghost_revive`. |
| `forced` | `boolean` | yes | If `true`, entities that can be marked for deconstruction are ignored. Only used if `build_check_type` is either `man... |
| `inner_name` | `string` | yes | The prototype name of the entity contained in the ghost. Only used if `name` is `entity-ghost`. |

**Returns:**

- `boolean` — 

### `can_fast_replace(name: EntityID, position: MapPosition, ?direction: defines.direction, ?force: ForceID) -> boolean`

If there exists an entity at the given location that can be fast-replaced with the given entity
parameters.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `EntityID` | no | Name of the entity to check. |
| `position` | `MapPosition` | no | Where the entity would be placed. |
| `direction` | `defines.direction` | yes | Direction the entity would be placed. Defaults to `north`. |
| `force` | `ForceID` | yes | The force that would place the entity. Defaults to the `"neutral"` force. |

**Returns:**

- `boolean` — 

### `find_entity(entity: EntityWithQualityID, position: MapPosition) -> LuaEntity`

Find an entity of the given name at the given position. This checks both the exact position and the
bounding box of the entity.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `EntityWithQualityID` | no | Name of the entity to look for. |
| `position` | `MapPosition` | no | Coordinates to look at. |

**Returns:**

- `LuaEntity` — `nil` if no such entity is found.

### `find_entities(?area: BoundingBox) -> array[LuaEntity]`

Find entities in a given area.  If no area is given all entities on the surface are returned.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | yes |  |

**Returns:**

- `array[LuaEntity]` — 

### `find_entities_filtered(filter: EntitySearchFilters) -> array[LuaEntity]`

Find all entities of the given type or name in the given area.  If no filters (`name`, `type`,
`force`, etc.) are given, this returns all entities in the search area. If multiple filters are
specified, only entities matching all given filters are returned.  - If no `area` or `position` are
given, the entire surface is searched.  - If `position` is given, this returns the entities
colliding with that position (i.e the given position is within the entity's collision box).  - If
`position` and `radius` are given, this returns the entities within the radius of the position.
Looks for the center of entities.  - If `area` is specified, this returns the entities colliding
with that area.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `EntitySearchFilters` | no |  |

**Returns:**

- `array[LuaEntity]` — 

### `find_tiles_filtered(filter: TileSearchFilters) -> array[LuaTile]`

Find all tiles of the given name in the given area.  If no filters are given, this returns all tiles
in the search area.  If no `area` or `position` and `radius` is given, the entire surface is
searched. If `position` and `radius` are given, only tiles within the radius of the position are
included.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `TileSearchFilters` | no |  |

**Returns:**

- `array[LuaTile]` — 

### `count_entities_filtered(filter: EntitySearchFilters) -> uint32`

Count entities of given type or name in a given area. Works just like
[LuaSurface::find_entities_filtered](runtime:LuaSurface::find_entities_filtered), except this only
returns the count. As it doesn't construct all the wrapper objects, this is more efficient if one is
only interested in the number of entities.  - If no `area` or `position` are given, the entire
surface is searched.  - If `position` is given, this returns the entities colliding with that
position (i.e the given position is within the entity's collision box).  - If `position` and
`radius` are given, this returns entities in the radius of the position.  - If `area` is specified,
this returns entities colliding with that area.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `EntitySearchFilters` | no |  |

**Returns:**

- `uint32` — 

### `count_tiles_filtered(filter: TileSearchFilters) -> uint32`

Count tiles of a given name in a given area. Works just like
[LuaSurface::find_tiles_filtered](runtime:LuaSurface::find_tiles_filtered), except this only returns
the count. As it doesn't construct all the wrapper objects, this is more efficient if one is only
interested in the number of tiles.  If no `area` or `position` and `radius` is given, the entire
surface is searched. If `position` and `radius` are given, only tiles within the radius of the
position are included.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `TileSearchFilters` | no |  |

**Returns:**

- `uint32` — 

### `find_non_colliding_position(name: EntityID, center: MapPosition, radius: double, precision: double, ?force_to_tile_center: boolean) -> MapPosition`

Find a non-colliding position within a given radius.  Special care needs to be taken when using a
radius of `0`. The game will not stop searching until it finds a suitable position, so it is
important to make sure such a position exists. One particular case where it would not be able to
find a solution is running it before any chunks have been generated.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `EntityID` | no | Prototype name of the entity to find a position for. (The bounding box for the collision checking is taken from this ... |
| `center` | `MapPosition` | no | Center of the search area. |
| `radius` | `double` | no | Max distance from `center` to search in. A radius of `0` means an infinitely-large search area. |
| `precision` | `double` | no | The step length from the given position as it searches, in tiles. Minimum value is `0.01`. |
| `force_to_tile_center` | `boolean` | yes | Will only check tile centers. This can be useful when your intent is to place a building at the resulting position, a... |

**Returns:**

- `MapPosition` — The non-colliding position. May be `nil` if no suitable position was found.

### `find_non_colliding_position_in_box(name: EntityID, search_space: BoundingBox, precision: double, ?force_to_tile_center: boolean) -> MapPosition`

Find a non-colliding position within a given rectangle.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `EntityID` | no | Prototype name of the entity to find a position for. (The bounding box for the collision checking is taken from this ... |
| `search_space` | `BoundingBox` | no | The rectangle to search inside. |
| `precision` | `double` | no | The step length from the given position as it searches, in tiles. Minimum value is 0.01. |
| `force_to_tile_center` | `boolean` | yes | Will only check tile centers. This can be useful when your intent is to place a building at the resulting position, a... |

**Returns:**

- `MapPosition` — The non-colliding position. May be `nil` if no suitable position was found.

### `spill_item_stack(position: MapPosition, stack: ItemStackIdentification, ?enable_looted: boolean, ?force: ForceID, ?allow_belts: boolean, ?max_radius: double, ?use_start_position_on_failure: boolean, ?drop_full_stack: boolean) -> array[LuaEntity]`

Spill items on the ground centered at a given location.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Center of the spillage |
| `stack` | `ItemStackIdentification` | no | Stack of items to spill |
| `enable_looted` | `boolean` | yes | When true, each created item will be flagged with the [LuaEntity::to_be_looted](runtime:LuaEntity::to_be_looted) flag... |
| `force` | `ForceID` | yes | When provided (and not `nil`) the items will be marked for deconstruction by this force. |
| `allow_belts` | `boolean` | yes | Whether items can be spilled onto belts. Defaults to `true`. |
| `max_radius` | `double` | yes | Max radius from the specified `position` to spill items. |
| `use_start_position_on_failure` | `boolean` | yes | Allow spilling items at `position` if no non-colliding position is found. Note: Setting to false might cause some ite... |
| `drop_full_stack` | `boolean` | yes | If item on ground should be made out of an entire provided stack. Defaults to `false`. |

**Returns:**

- `array[LuaEntity]` — The created item-on-ground entities.

### `spill_inventory(position: MapPosition, inventory: LuaInventory, ?enable_looted: boolean, ?force: ForceID, ?allow_belts: boolean, ?max_radius: double, ?use_start_position_on_failure: boolean, ?drop_full_stack: boolean) -> array[LuaEntity]`

Spill inventory on the ground centered at a given location.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Center of the spillage |
| `inventory` | `LuaInventory` | no | Inventory to spill |
| `enable_looted` | `boolean` | yes | When true, each created item will be flagged with the [LuaEntity::to_be_looted](runtime:LuaEntity::to_be_looted) flag... |
| `force` | `ForceID` | yes | When provided (and not `nil`) the items will be marked for deconstruction by this force. |
| `allow_belts` | `boolean` | yes | Whether items can be spilled onto belts. Defaults to `true`. |
| `max_radius` | `double` | yes | Max radius from the specified `position` to spill items. |
| `use_start_position_on_failure` | `boolean` | yes | Allow spilling items at `position` if no non-colliding position is found. Note: Setting to false might cause some ite... |
| `drop_full_stack` | `boolean` | yes | If item on ground should be made out of an entire provided stack. Defaults to `false`. |

**Returns:**

- `array[LuaEntity]` — The created item-on-ground entities.

### `find_enemy_units(center: MapPosition, radius: double, ?force: ForceID) -> array[LuaEntity]`

Find enemy units (entities with type "unit") of a given force within an area.  This is more
efficient than [LuaSurface::find_entities](runtime:LuaSurface::find_entities).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `center` | `MapPosition` | no | Center of the search area |
| `radius` | `double` | no | Radius of the circular search area |
| `force` | `ForceID` | yes | Force to find enemies of. If not given, uses the player force. |

**Returns:**

- `array[LuaEntity]` — 

### `find_units(area: BoundingBox, force: ForceID, condition: ForceCondition) -> array[LuaEntity]`

Find units (entities with type "unit") of a given force and force condition within a given area.
This is more efficient than [LuaSurface::find_entities](runtime:LuaSurface::find_entities).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | no | Box to find units within. |
| `force` | `ForceID` | no | Force performing the search. |
| `condition` | `ForceCondition` | no | Only forces which meet the condition will be included in the search. |

**Returns:**

- `array[LuaEntity]` — 

### `find_nearest_enemy(position: MapPosition, max_distance: double, ?force: ForceID) -> LuaEntity`

Find the enemy military target ([military
entity](https://wiki.factorio.com/Military_units_and_structures)) closest to the given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Center of the search area. |
| `max_distance` | `double` | no | Radius of the circular search area. |
| `force` | `ForceID` | yes | The force the result will be an enemy of. Uses the player force if not specified. |

**Returns:**

- `LuaEntity` — The nearest enemy military target or `nil` if no enemy could be found within the given area.

### `find_nearest_enemy_entity_with_owner(position: MapPosition, max_distance: double, ?force: ForceID) -> LuaEntity`

Find the enemy entity-with-owner closest to the given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Center of the search area. |
| `max_distance` | `double` | no | Radius of the circular search area. |
| `force` | `ForceID` | yes | The force the result will be an enemy of. Uses the player force if not specified. |

**Returns:**

- `LuaEntity` — The nearest enemy entity-with-owner or `nil` if no enemy could be found within the given area.

### `set_multi_command(command: Command, unit_count: uint32, ?force: ForceID, ?unit_search_distance: uint32) -> uint32`

Give a command to multiple units. This will automatically select suitable units for the task.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `command` | `Command` | no |  |
| `unit_count` | `uint32` | no | Number of units to give the command to. |
| `force` | `ForceID` | yes | Force of the units this command is to be given to. If not specified, uses the enemy force. |
| `unit_search_distance` | `uint32` | yes | Radius to search for units. The search area is centered on the destination of the command. If not specified uses defa... |

**Returns:**

- `uint32` — Number of units actually sent. May be less than `count` if not enough units were available.

### `create_entity(name: EntityID, position: MapPosition, ?direction: defines.direction, ?mirror: boolean, ?quality: QualityID, ?force: ForceID, ?target: LuaEntity | MapPosition, ?source: LuaEntity | MapPosition, ?cause: LuaEntity | ForceID, ?snap_to_grid: boolean, ?fast_replace: boolean, ?undo_index: uint32, ?player: PlayerIdentification, ?character: LuaEntity, ?spill: boolean, ?raise_built: boolean, ?create_build_effect_smoke: boolean, ?spawn_decorations: boolean, ?move_stuck_players: boolean, ?item: LuaItemStack, ?preserve_ghosts_and_corpses: boolean, ?register_plant: boolean, ?burner_fuel_inventory: BlueprintInventoryWithFilters) -> LuaEntity`

Create an entity on this surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `EntityID` | no | The entity prototype name to create. |
| `position` | `MapPosition` | no | Where to create the entity. |
| `direction` | `defines.direction` | yes | Desired orientation of the entity after creation. |
| `mirror` | `boolean` | yes | Whether this entity is mirrored. Defaults to `false`. |
| `quality` | `QualityID` | yes | Quality of the entity to be created. Defaults to `normal`. |
| `force` | `ForceID` | yes | Force of the entity, default is enemy. |
| `target` | `LuaEntity | MapPosition` | yes | Entity with health for the new entity to target. |
| `source` | `LuaEntity | MapPosition` | yes | Source entity. Used for beams, projectiles, and highlight-boxes. |
| `cause` | `LuaEntity | ForceID` | yes | Cause entity / force. The entity or force that triggered the chain of events that led to this entity being created. U... |
| `snap_to_grid` | `boolean` | yes | If false the exact position given is used to instead of snapping to the normal entity grid. This only applies if the ... |
| `fast_replace` | `boolean` | yes | If true, building will attempt to simulate fast-replace building. Defaults to `false`. |
| `undo_index` | `uint32` | yes | The index of the undo item to add this action to. An index of `0` creates a new undo item for it. Defaults to putting... |
| `player` | `PlayerIdentification` | yes | If given set the last_user to this player. If fast_replace is true simulate fast replace using this player. Also the ... |
| `character` | `LuaEntity` | yes | If fast_replace is true simulate fast replace using this character. |
| `spill` | `boolean` | yes | If false while fast_replace is true and player is nil any items from fast-replacing will be deleted instead of droppe... |
| `raise_built` | `boolean` | yes | If true; [defines.events.script_raised_built](runtime:defines.events.script_raised_built) will be fired on successful... |
| `create_build_effect_smoke` | `boolean` | yes | If false, the building effect smoke will not be shown around the new entity. Defaults to `true`. |
| `spawn_decorations` | `boolean` | yes | If true, entity types that have [spawn_decoration](runtime:LuaEntityPrototype::spawn_decorations) property will apply... |
| `move_stuck_players` | `boolean` | yes | If true, any characters that are in the way of the entity are teleported out of the way. |
| `item` | `LuaItemStack` | yes | If provided, the entity will attempt to pull stored values from this item (for example; creating a spidertron from a ... |
| `preserve_ghosts_and_corpses` | `boolean` | yes | If true, colliding ghosts and corpses will not be removed by the creation of some entity types. Defaults to `false`. |
| `register_plant` | `boolean` | yes | If true, plants created will register in any in-range agricultural towers. |
| `burner_fuel_inventory` | `BlueprintInventoryWithFilters` | yes | Used by entities with a burner energy source. |

**Returns:**

- `LuaEntity` — The created entity or `nil` if the creation failed.

### `create_segmented_unit(name: EntityID, ?quality: QualityID, ?force: ForceID, ?territory: LuaTerritory) -> LuaSegmentedUnit`

Create a segmented unit on the surface. This differs from creating an entity with type `"segmented-
unit"` in that this method can create the entity in non-generated chunks and with any arbitrary body
shape and pre-assigned to a territory.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `EntityID` | no | The segmented-unit prototype name to create. Must be of type `"segmented-unit"`. |
| `quality` | `QualityID` | yes | Quality of the entity to be created. Defaults to `normal`. |
| `force` | `ForceID` | yes | Force of the segmented unit. Defaults to `enemy`. |
| `territory` | `LuaTerritory` | yes | The territory that the segmented unit is assigned to. If `nil`, the segmented unit will patrol around its spawn locat... |

**Returns:**

- `LuaSegmentedUnit` — The created segmented unit or `nil` if the creation failed or the unit was destroyed during creation.

### `create_territory(chunks: array[ChunkPosition], ?patrol_path: array[MapPosition]) -> LuaTerritory`

Create a territory on the surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `chunks` | `array[ChunkPosition]` | no | The chunks to assign to the new territory. Must contain at least one generated chunk. Any chunks already assigned to ... |
| `patrol_path` | `array[MapPosition]` | yes | The path that patrolling units will follow. If `nil` or empty, one will be generated for the new territory based on `... |

**Returns:**

- `LuaTerritory` — The created territory or `nil` if the creation failed or the territory was destroyed during creation.

### `create_trivial_smoke(name: TrivialSmokeID, position: MapPosition)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `TrivialSmokeID` | no | The smoke prototype name to create. |
| `position` | `MapPosition` | no | Where to create the smoke. |

### `create_particle(name: ParticleID, position: MapPosition, movement: Vector, height: float, vertical_speed: float, frame_speed: float)`

Creates a particle at the given location

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `ParticleID` | no | The particle name. |
| `position` | `MapPosition` | no | Where to create the particle. |
| `movement` | `Vector` | no |  |
| `height` | `float` | no |  |
| `vertical_speed` | `float` | no |  |
| `frame_speed` | `float` | no |  |

### `create_unit_group(position: MapPosition, ?force: ForceID) -> LuaCommandable`

Create a new unit group at a given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Initial position of the new unit group. |
| `force` | `ForceID` | yes | Force of the new unit group. Defaults to `"enemy"`. |

**Returns:**

- `LuaCommandable` — 

### `build_enemy_base(position: MapPosition, unit_count: uint32, ?force: ForceID)`

Send a group to build a new base.  The specified force must be AI-controlled; i.e.
`force.ai_controllable` must be `true`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Location of the new base. |
| `unit_count` | `uint32` | no | Number of biters to send for the base-building task. |
| `force` | `ForceID` | yes | Force the new base will belong to. Defaults to enemy. |

### `get_tile(x: int32, y: int32) -> LuaTile`

Get the tile at a given position. An alternative call signature for this method is passing it a
single [TilePosition](runtime:TilePosition).  Non-integer values will result in them being rounded
down.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `x` | `int32` | no |  |
| `y` | `int32` | no |  |

**Returns:**

- `LuaTile` — 

### `set_tiles(tiles: array[Tile], ?correct_tiles: boolean, ?remove_colliding_entities: boolean | 'abort_on_collision', ?remove_colliding_decoratives: boolean, ?raise_event: boolean, ?player: PlayerIdentification, ?undo_index: uint32)`

Set tiles at specified locations. Can automatically correct the edges around modified tiles.
Placing a [mineable](runtime:LuaTilePrototype::mineable_properties) tile on top of a non-mineable or
[foundation](runtime:LuaTilePrototype::is_foundation) one will turn the latter into the
[LuaTile::hidden_tile](runtime:LuaTile::hidden_tile) for that tile. Placing a mineable non-
foundation tile on a mineable non-foundation one or a mineable foundation tile on a mineable
foundation one will not modify the hidden tile. This restriction can however be circumvented by
using [LuaSurface::set_hidden_tile](runtime:LuaSurface::set_hidden_tile). Placing a non-foundation
tile on top of a foundation one when there already exists a hidden tile will push hidden tile to
[double hidden](runtime:LuaTile::double_hidden_tile), and foundation tile will turn into hidden.
Placing a mineable foundation tile over a mineable non-foundation tile with hidden mineable
foundation tile, the hidden tile will be replaced by previously double hidden tile and double hidden
tile will be erased. Placing a non-mineable tile will erase hidden and double hidden tiles.  It is
recommended to call this method once for all the tiles you want to change rather than calling it
individually for every tile. As the tile correction is used after every step, calling it one by one
could cause the tile correction logic to redo some of the changes. Also, many small API calls are
generally more performance intensive than one big one.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tiles` | `array[Tile]` | no |  |
| `correct_tiles` | `boolean` | yes | If `false`, the correction logic is not applied to the changed tiles. Defaults to `true`. |
| `remove_colliding_entities` | `boolean | 'abort_on_collision'` | yes | Defaults to `true`. |
| `remove_colliding_decoratives` | `boolean` | yes | Defaults to `true`. |
| `raise_event` | `boolean` | yes | Defaults to `false`. |
| `player` | `PlayerIdentification` | yes | The player whose undo queue to add these actions to. |
| `undo_index` | `uint32` | yes | The index of the undo item to add this action to. An index of `0` creates a new undo item for it. Defaults to putting... |

### `pollute(source: MapPosition, amount: double, ?prototype: EntityID)`

Spawn pollution at the given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source` | `MapPosition` | no | Where to spawn the pollution. |
| `amount` | `double` | no | How much pollution to add. |
| `prototype` | `EntityID` | yes | The entity prototype to attribute the pollution change to in statistics. If not defined, the pollution change will no... |

### `get_chunks() -> LuaChunkIterator`

Get an iterator going over every chunk on this surface.  Chunks may or may not be generated; use
[LuaSurface::is_chunk_generated](runtime:LuaSurface::is_chunk_generated) to check a chunk's state
before accessing it.

**Returns:**

- `LuaChunkIterator` — 

### `is_chunk_generated(chunk_position: ChunkPosition) -> boolean`

Is a given chunk generated?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `chunk_position` | `ChunkPosition` | no | The chunk's position. |

**Returns:**

- `boolean` — 

### `request_to_generate_chunks(position: MapPosition, ?radius: uint32)`

Request that the game's map generator generate chunks at the given position for the given radius on
this surface. If the radius is `0`, then only the chunk at the given position is generated.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Where to generate the new chunks. |
| `radius` | `uint32` | yes | The chunk radius from `position` to generate new chunks in. Defaults to `0`. |

### `force_generate_chunk_requests()`

Blocks and generates all chunks that have been requested using all available threads.

### `set_chunk_generated_status(chunk_position: ChunkPosition, status: defines.chunk_generated_status)`

Set generated status of a chunk. Useful when copying chunks.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `chunk_position` | `ChunkPosition` | no | The chunk's position. |
| `status` | `defines.chunk_generated_status` | no | The chunk's new status. |

### `get_territories() -> array[LuaTerritory]`

Get all territories on the surface.

**Returns:**

- `array[LuaTerritory]` — 

### `get_territory_for_chunk(chunk_position: ChunkPosition) -> LuaTerritory`

Get the territory that the given chunk is assigned to. If the chunk is not part of any territory or
the territory for the chunk has not yet been generated, then this returns `nil`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `chunk_position` | `ChunkPosition` | no | The chunk's position. The chunk at this position does not need to exist. |

**Returns:**

- `LuaTerritory` — 

### `set_territory_for_chunks(chunk_positions: array[ChunkPosition], ?territory: LuaTerritory)`

Removes the given chunks from their current territories and adds them to the given territory if
provided.  This does not affect the
[LuaTerritory::get_patrol_path](runtime:LuaTerritory::get_patrol_path). It is your responsibility to
update the patrol path if needed.  It's recommended that territory chunks are connected to each
other, but this is not required.  Territories that do not contain at least one generated chunk as a
result of calling this method will be automatically deleted.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `chunk_positions` | `array[ChunkPosition]` | no | The chunk positions. The chunks at these positions do not need to exist in order to be assigned to a territory. |
| `territory` | `LuaTerritory` | yes | The territory to associate the chunks with. If not `nil`, the territory must belong to this same surface or else an e... |

### `clear_territory_for_chunks(chunk_positions: array[ChunkPosition])`

Removes the chunk from the territory it is associated with (if any) and allows the map generator to
potentially generate a new territory for the chunk in the future. To prevent the game from
generating a new territory for the chunk, use
[LuaSurface::set_chunk_territory](runtime:LuaSurface::set_chunk_territory) to set the chunk's
territory to `nil`.  Territories that do not contain at least one generated chunk as a result of
calling this method will be automatically deleted.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `chunk_positions` | `array[ChunkPosition]` | no | The chunk positions. The chunks at these positions does not need to exist. |

### `get_segmented_units() -> array[LuaSegmentedUnit]`

Get all segmented units that exist on the surface.

**Returns:**

- `array[LuaSegmentedUnit]` — 

### `find_logistic_network_by_position(position: MapPosition, force: ForceID) -> LuaLogisticNetwork`

Find the logistic network that covers a given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no |  |
| `force` | `ForceID` | no | Force the logistic network should belong to. |

**Returns:**

- `LuaLogisticNetwork` — The found network or `nil` if no such network was found.

### `find_closest_logistic_network_by_position(position: MapPosition, force: ForceID) -> LuaLogisticNetwork`

Find the logistic network with a cell closest to a given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no |  |
| `force` | `ForceID` | no | Force the logistic network should belong to. |

**Returns:**

- `LuaLogisticNetwork` — The found network or `nil` if no such network was found.

### `find_logistic_networks_by_construction_area(position: MapPosition, force: ForceID) -> array[LuaLogisticNetwork]`

Finds all of the logistics networks whose construction area intersects with the given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no |  |
| `force` | `ForceID` | no | Force the logistic networks should belong to. |

**Returns:**

- `array[LuaLogisticNetwork]` — 

### `deconstruct_area(area: BoundingBox, force: ForceID, ?player: PlayerIdentification, ?skip_fog_of_war: boolean, ?item: LuaItemStack, ?super_forced: boolean)`

Place a deconstruction request.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | no | The area to mark for deconstruction. |
| `force` | `ForceID` | no | The force whose bots should perform the deconstruction. |
| `player` | `PlayerIdentification` | yes | The player to set the last_user to if any. |
| `skip_fog_of_war` | `boolean` | yes | If chunks covered by fog-of-war are skipped. Defaults to `false`. |
| `item` | `LuaItemStack` | yes | The deconstruction item to use if any. |
| `super_forced` | `boolean` | yes | If the deconstruction is super-forced. Defaults to `false`. |

### `cancel_deconstruct_area(area: BoundingBox, force: ForceID, ?player: PlayerIdentification, ?skip_fog_of_war: boolean, ?item: LuaItemStack, ?undo_index: uint32, ?super_forced: boolean)`

Cancel a deconstruction order.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | no | The area to cancel deconstruction orders in. |
| `force` | `ForceID` | no | The force whose deconstruction orders to cancel. |
| `player` | `PlayerIdentification` | yes | The player to set the last_user to, if any. Also the player whose undo queue this action should be added to. |
| `skip_fog_of_war` | `boolean` | yes | If chunks covered by fog-of-war are skipped. Defaults to `false`. |
| `item` | `LuaItemStack` | yes | The deconstruction item to use if any. |
| `undo_index` | `uint32` | yes | The index of the undo item to add this action to. An index of `0` creates a new undo item for it. Defaults to putting... |
| `super_forced` | `boolean` | yes | If the cancel deconstruction is super-forced. Defaults to `false`. |

### `upgrade_area(area: BoundingBox, force: ForceID, ?player: PlayerIdentification, ?skip_fog_of_war: boolean, item: LuaItemStack)`

Place an upgrade request.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | no | The area to mark for upgrade. |
| `force` | `ForceID` | no | The force whose bots should perform the upgrade. |
| `player` | `PlayerIdentification` | yes | The player to set the last_user to if any. |
| `skip_fog_of_war` | `boolean` | yes | If chunks covered by fog-of-war are skipped. |
| `item` | `LuaItemStack` | no | The upgrade item to use. |

### `cancel_upgrade_area(area: BoundingBox, force: ForceID, ?player: PlayerIdentification, ?skip_fog_of_war: boolean, item: LuaItemStack)`

Cancel a upgrade order.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | no | The area to cancel upgrade orders in. |
| `force` | `ForceID` | no | The force whose upgrade orders to cancel. |
| `player` | `PlayerIdentification` | yes | The player to set the last_user to if any. |
| `skip_fog_of_war` | `boolean` | yes | If chunks covered by fog-of-war are skipped. |
| `item` | `LuaItemStack` | no | The upgrade item to use. |

### `get_hidden_tile(position: TilePosition) -> string`

The hidden tile name.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `TilePosition` | no | The tile position. |

**Returns:**

- `string` — `nil` if there isn't one for the given position.

### `get_double_hidden_tile(position: TilePosition) -> string`

The double hidden tile name or `nil` if there isn't one for the given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `TilePosition` | no | The tile position. |

**Returns:**

- `string` — 

### `set_hidden_tile(position: TilePosition, ?tile: TileID)`

Set the hidden tile for the specified position. While during normal gameplay only [non-
mineable](runtime:LuaTilePrototype::mineable_properties) or
[foundation](runtime:LuaTilePrototype::is_foundation) tiles can become hidden, this method allows
any kind of tile to be set as the hidden one.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `TilePosition` | no | The tile position. |
| `tile` | `TileID` | yes | The new hidden tile or `nil` to clear the hidden tile. |

### `set_double_hidden_tile(position: TilePosition, ?tile: TileID)`

Set double hidden tile for the specified position. During normal gameplay, only [non-
mineable](runtime:LuaTilePrototype::mineable_properties) tiles can become double hidden.  Does
nothing if hidden tile at specified position does not exist.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `TilePosition` | no | The tile position. |
| `tile` | `TileID` | yes | The new double hidden tile or `nil` to clear the double hidden tile. |

### `get_connected_tiles(position: TilePosition, tiles: array[TileID], ?include_diagonal: boolean, ?area: BoundingBox) -> array[TilePosition]`

Gets all tiles of the given types that are connected horizontally or vertically to the given tile
position including the given tile position.  This won't find tiles in non-generated chunks.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `TilePosition` | no | The tile position to start at. |
| `tiles` | `array[TileID]` | no | The tiles to search for. |
| `include_diagonal` | `boolean` | yes | Include tiles that are connected diagonally. |
| `area` | `BoundingBox` | yes | The area to find connected tiles in. If provided the start position must be in this area. |

**Returns:**

- `array[TilePosition]` — The resulting set of tiles.

### `delete_chunk(chunk_position: ChunkPosition)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `chunk_position` | `ChunkPosition` | no | The chunk position to delete |

### `regenerate_entity(?entities: string | array[string], ?chunks: array[ChunkPosition])`

Regenerate autoplacement of some entities on this surface. This can be used to autoplace newly-added
entities.  All specified entity prototypes must be autoplacable. If nothing is given all entities
are generated on all chunks.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entities` | `string | array[string]` | yes | Prototype names of entity or entities to autoplace. When `nil` all entities with an autoplace are used. |
| `chunks` | `array[ChunkPosition]` | yes | The chunk positions to regenerate the entities on. If not given all chunks are regenerated. Note chunks with status <... |

### `regenerate_decorative(?decoratives: string | array[string], ?chunks: array[ChunkPosition])`

Regenerate autoplacement of some decoratives on this surface. This can be used to autoplace newly-
added decoratives.  All specified decorative prototypes must be autoplacable. If nothing is given
all decoratives are generated on all chunks.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `decoratives` | `string | array[string]` | yes | Prototype names of decorative or decoratives to autoplace. When `nil` all decoratives with an autoplace are used. |
| `chunks` | `array[ChunkPosition]` | yes | The chunk positions to regenerate the decoratives on. If not given all chunks are regenerated. Note chunks with statu... |

### `print(message: LocalisedString, ?print_settings: PrintSettings)`

Print text to the chat console of all players on this surface.  By default, messages that are
identical to a message sent in the last 60 ticks are not printed again.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `message` | `LocalisedString` | no |  |
| `print_settings` | `PrintSettings` | yes |  |

### `destroy_decoratives(?area: BoundingBox, ?position: TilePosition, ?name: DecorativeID | array[DecorativeID], ?collision_mask: CollisionLayerID | array[CollisionLayerID] | dict[CollisionLayerID, True], ?from_layer: string, ?to_layer: string, ?exclude_soft: boolean, ?limit: uint32, ?invert: boolean)`

Removes all decoratives from the given area. If no area and no position are given, then the entire
surface is searched.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | yes |  |
| `position` | `TilePosition` | yes |  |
| `name` | `DecorativeID | array[DecorativeID]` | yes |  |
| `collision_mask` | `CollisionLayerID | array[CollisionLayerID] | dict[CollisionLayerID, True]` | yes |  |
| `from_layer` | `string` | yes |  |
| `to_layer` | `string` | yes |  |
| `exclude_soft` | `boolean` | yes | Soft decoratives can be drawn over rails. |
| `limit` | `uint32` | yes |  |
| `invert` | `boolean` | yes | If the filters should be inverted. |

### `create_decoratives(?check_collision: boolean, decoratives: array[Decorative])`

Adds the given decoratives to the surface.  This will merge decoratives of the same type that
already exist effectively increasing the "amount" field.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `check_collision` | `boolean` | yes | If collision should be checked against entities/tiles. |
| `decoratives` | `array[Decorative]` | no |  |

### `find_decoratives_filtered(?area: BoundingBox, ?position: TilePosition, ?name: DecorativeID | array[DecorativeID], ?collision_mask: CollisionLayerID | array[CollisionLayerID] | dict[CollisionLayerID, True], ?from_layer: string, ?to_layer: string, ?exclude_soft: boolean, ?limit: uint32, ?invert: boolean) -> array[DecorativeResult]`

Find decoratives of a given name in a given area.  If no filters are given, returns all decoratives
in the search area. If multiple filters are specified, returns only decoratives matching every given
filter. If no area and no position are given, the entire surface is searched.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | yes |  |
| `position` | `TilePosition` | yes |  |
| `name` | `DecorativeID | array[DecorativeID]` | yes |  |
| `collision_mask` | `CollisionLayerID | array[CollisionLayerID] | dict[CollisionLayerID, True]` | yes |  |
| `from_layer` | `string` | yes |  |
| `to_layer` | `string` | yes |  |
| `exclude_soft` | `boolean` | yes | Soft decoratives can be drawn over rails. |
| `limit` | `uint32` | yes |  |
| `invert` | `boolean` | yes | If the filters should be inverted. |

**Returns:**

- `array[DecorativeResult]` — 

### `clear_pollution()`

Clears all pollution on this surface.

### `play_sound(sound_specification: PlaySoundSpecification)`

Play a sound for every player on this surface.  The sound is not played if its location is not
[charted](runtime:LuaForce::chart) for that player.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sound_specification` | `PlaySoundSpecification` | no | The sound to play. |

### `get_resource_counts() -> dict[string, uint32]`

Gets the resource amount of all resources on this surface

**Returns:**

- `dict[string, uint32]` — 

### `get_random_chunk() -> ChunkPosition`

Gets a random generated chunk position or 0,0 if no chunks have been generated on this surface.

**Returns:**

- `ChunkPosition` — 

### `clone_area(source_area: BoundingBox, destination_area: BoundingBox, ?destination_surface: SurfaceIdentification, ?destination_force: ForceID, ?clone_tiles: boolean, ?clone_entities: boolean, ?clone_decoratives: boolean, ?clear_destination_entities: boolean, ?clear_destination_decoratives: boolean, ?expand_map: boolean, ?create_build_effect_smoke: boolean)`

Clones the given area.  Entities are cloned in an order such that they can always be created, eg
rails before trains.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source_area` | `BoundingBox` | no |  |
| `destination_area` | `BoundingBox` | no |  |
| `destination_surface` | `SurfaceIdentification` | yes |  |
| `destination_force` | `ForceID` | yes |  |
| `clone_tiles` | `boolean` | yes | If tiles should be cloned |
| `clone_entities` | `boolean` | yes | If entities should be cloned |
| `clone_decoratives` | `boolean` | yes | If decoratives should be cloned |
| `clear_destination_entities` | `boolean` | yes | If the destination entities should be cleared |
| `clear_destination_decoratives` | `boolean` | yes | If the destination decoratives should be cleared |
| `expand_map` | `boolean` | yes | If the destination surface should be expanded when destination_area is outside current bounds. Defaults to `false`. |
| `create_build_effect_smoke` | `boolean` | yes | If true, the building effect smoke will be shown around the new entities. Defaults to `false`. |

### `clone_brush(source_offset: TilePosition, destination_offset: TilePosition, source_positions: array[TilePosition], ?destination_surface: SurfaceIdentification, ?destination_force: LuaForce | string, ?clone_tiles: boolean, ?clone_entities: boolean, ?clone_decoratives: boolean, ?clear_destination_entities: boolean, ?clear_destination_decoratives: boolean, ?expand_map: boolean, ?manual_collision_mode: boolean, ?create_build_effect_smoke: boolean)`

Clones the given area.  [defines.events.on_entity_cloned](runtime:defines.events.on_entity_cloned)
is raised for each entity, and then
[defines.events.on_area_cloned](runtime:defines.events.on_area_cloned) is raised.  Entities are
cloned in an order such that they can always be created, eg rails before trains.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source_offset` | `TilePosition` | no |  |
| `destination_offset` | `TilePosition` | no |  |
| `source_positions` | `array[TilePosition]` | no |  |
| `destination_surface` | `SurfaceIdentification` | yes |  |
| `destination_force` | `LuaForce | string` | yes |  |
| `clone_tiles` | `boolean` | yes | If tiles should be cloned |
| `clone_entities` | `boolean` | yes | If entities should be cloned |
| `clone_decoratives` | `boolean` | yes | If decoratives should be cloned |
| `clear_destination_entities` | `boolean` | yes | If the destination entities should be cleared |
| `clear_destination_decoratives` | `boolean` | yes | If the destination decoratives should be cleared |
| `expand_map` | `boolean` | yes | If the destination surface should be expanded when destination_area is outside current bounds. Defaults to `false`. |
| `manual_collision_mode` | `boolean` | yes | If manual-style collision checks should be done. |
| `create_build_effect_smoke` | `boolean` | yes | If true, the building effect smoke will be shown around the new entities. |

### `clone_entities(entities: array[LuaEntity], destination_offset: Vector, ?destination_surface: SurfaceIdentification, ?destination_force: ForceID, ?snap_to_grid: boolean, ?create_build_effect_smoke: boolean)`

Clones the given entities.  Entities are cloned in an order such that they can always be created, eg
rails before trains.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entities` | `array[LuaEntity]` | no |  |
| `destination_offset` | `Vector` | no |  |
| `destination_surface` | `SurfaceIdentification` | yes |  |
| `destination_force` | `ForceID` | yes |  |
| `snap_to_grid` | `boolean` | yes |  |
| `create_build_effect_smoke` | `boolean` | yes | If true, the building effect smoke will be shown around the new entities. |

### `clear(?ignore_characters: boolean)`

Clears this surface deleting all entities and chunks on it.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ignore_characters` | `boolean` | yes | Whether characters on this surface that are connected to or associated with players should be ignored (not destroyed)... |

### `request_path(bounding_box: BoundingBox, collision_mask: CollisionMask, start: MapPosition, goal: MapPosition, force: ForceID, ?radius: double, ?pathfind_flags: PathfinderFlags, ?can_open_gates: boolean, ?path_resolution_modifier: int32, ?max_gap_size: int32, ?max_attack_distance: double, ?entity_to_ignore: LuaEntity) -> uint32`

Generates a path with the specified constraints (as an array of
[PathfinderWaypoints](runtime:PathfinderWaypoint)) using the unit pathfinding algorithm. This path
can be used to emulate pathing behavior by script for non-unit entities, such as vehicles. If you
want to command actual units (such as biters or spitters) to move, use
[LuaCommandable::set_command](runtime:LuaCommandable::set_command) via
[LuaEntity::commandable](runtime:LuaEntity::commandable) instead.  The resulting path is ultimately
returned asynchronously via
[on_script_path_request_finished](runtime:on_script_path_request_finished).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `bounding_box` | `BoundingBox` | no | The dimensions of the object that's supposed to travel the path. |
| `collision_mask` | `CollisionMask` | no | The collision mask the `bounding_box` collides with. |
| `start` | `MapPosition` | no | The position from which to start pathfinding. |
| `goal` | `MapPosition` | no | The position to find a path to. |
| `force` | `ForceID` | no | The force for which to generate the path, determining which gates can be opened for example. |
| `radius` | `double` | yes | How close the pathfinder needs to get to its `goal` (in tiles). Defaults to `1`. |
| `pathfind_flags` | `PathfinderFlags` | yes | Flags that affect pathfinder behavior. |
| `can_open_gates` | `boolean` | yes | Whether the path request can open gates. Defaults to `false`. |
| `path_resolution_modifier` | `int32` | yes | Defines how coarse the pathfinder's grid is, where smaller values mean a coarser grid. Defaults to `0`, which equals ... |
| `max_gap_size` | `int32` | yes | Defines the maximum allowed distance between path waypoints. 0 means that paths must be contiguous (as they are for b... |
| `max_attack_distance` | `double` | yes | Defines the maximum allowed distance between the last traversable path waypoint and an obstacle entity to be destroye... |
| `entity_to_ignore` | `LuaEntity` | yes | Makes the pathfinder ignore collisions with this entity if it is given. |

**Returns:**

- `uint32` — A unique handle to identify this call when [on_script_path_request_finished](runtime:on_script_path_request_finished)...

### `get_script_areas(?name: string) -> array[ScriptArea]`

Gets the script areas that match the given name or if no name is given all areas are returned.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | yes |  |

**Returns:**

- `array[ScriptArea]` — 

### `get_script_area(?key: string | uint32) -> ScriptArea`

Gets the first script area by name or id.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `key` | `string | uint32` | yes | The name or id of the area to get. |

**Returns:**

- `ScriptArea` — 

### `edit_script_area(id: uint32, area: ScriptArea)`

Sets the given script area to the new values.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `uint32` | no | The area to edit. |
| `area` | `ScriptArea` | no |  |

### `add_script_area(area: ScriptArea) -> uint32`

Adds the given script area.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `ScriptArea` | no |  |

**Returns:**

- `uint32` — The id of the created area.

### `remove_script_area(id: uint32) -> boolean`

Removes the given script area.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `uint32` | no |  |

**Returns:**

- `boolean` — If the area was actually removed. False when it didn't exist.

### `get_script_positions(?name: string) -> array[ScriptPosition]`

Gets the script positions that match the given name or if no name is given all positions are
returned.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | yes |  |

**Returns:**

- `array[ScriptPosition]` — 

### `get_script_position(?key: string | uint32) -> ScriptPosition`

Gets the first script position by name or id.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `key` | `string | uint32` | yes | The name or id of the position to get. |

**Returns:**

- `ScriptPosition` — 

### `edit_script_position(id: uint32, position: ScriptPosition)`

Sets the given script position to the new values.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `uint32` | no | The position to edit. |
| `position` | `ScriptPosition` | no |  |

### `add_script_position(position: ScriptPosition) -> uint32`

Adds the given script position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `ScriptPosition` | no |  |

**Returns:**

- `uint32` — The id of the created position.

### `remove_script_position(id: uint32) -> boolean`

Removes the given script position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `uint32` | no |  |

**Returns:**

- `boolean` — If the position was actually removed. False when it didn't exist.

### `get_map_exchange_string() -> string`

Gets the map exchange string for the current map generation settings of this surface.

**Returns:**

- `string` — 

### `get_starting_area_radius() -> double`

Gets the starting area radius of this surface.

**Returns:**

- `double` — 

### `get_closest(position: MapPosition, entities: array[LuaEntity]) -> LuaEntity`

Gets the closest entity in the list to this position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no |  |
| `entities` | `array[LuaEntity]` | no | The Entities to check. |

**Returns:**

- `LuaEntity` — 

### `get_total_pollution() -> double`

Gets the total amount of pollution on the surface by iterating over all the chunks containing
pollution.

**Returns:**

- `double` — 

### `entity_prototype_collides(prototype: EntityID, position: MapPosition, use_map_generation_bounding_box: boolean, ?direction: defines.direction) -> boolean`

Whether the given entity prototype collides at the given position and direction.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `prototype` | `EntityID` | no | The entity prototype to check. |
| `position` | `MapPosition` | no | The position to check. |
| `use_map_generation_bounding_box` | `boolean` | no | If the map generation bounding box should be used instead of the collision bounding box. |
| `direction` | `defines.direction` | yes |  |

**Returns:**

- `boolean` — 

### `decorative_prototype_collides(prototype: DecorativeID, position: MapPosition) -> boolean`

Whether the given decorative prototype collides at the given position and direction.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `prototype` | `DecorativeID` | no | The decorative prototype to check. |
| `position` | `MapPosition` | no | The position to check. |

**Returns:**

- `boolean` — 

### `calculate_tile_properties(property_names: array[string], positions: array[MapPosition]) -> dict[string, array[double]]`

Calculate values for a list of tile properties at a list of positions. Requests for unrecognized
properties will be ignored, so this can also be used to test whether those properties exist.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `property_names` | `array[string]` | no | Names of properties (`"elevation"`, etc) to calculate. |
| `positions` | `array[MapPosition]` | no | Positions for which to calculate property values. |

**Returns:**

- `dict[string, array[double]]` — Table of property value lists, keyed by property name.

### `get_entities_with_force(chunk_position: ChunkPosition, force: ForceID) -> array[LuaEntity]`

Returns all the military targets (entities with force) on this chunk for the given force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `chunk_position` | `ChunkPosition` | no | The chunk's position. |
| `force` | `ForceID` | no | Entities of this force will be returned. |

**Returns:**

- `array[LuaEntity]` — 

### `create_entities_from_blueprint_string(string: string, position: MapPosition, ?force: ForceID, ?direction: defines.direction, ?flip_horizontal: boolean, ?flip_vertical: boolean, ?by_player: PlayerIdentification) -> int32`

This method only works when used in simulations.  Places entities via the given blueprint string.
These entities are force-built.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `string` | `string` | no | The blueprint string to import. |
| `position` | `MapPosition` | no | The position to place the blueprint at. |
| `force` | `ForceID` | yes | The force to place the blueprint for. Defaults to the player force. |
| `direction` | `defines.direction` | yes | The direction to place the blueprint in. Defaults to north. |
| `flip_horizontal` | `boolean` | yes | Whether to flip the blueprint horizontally. Defaults to `false`. |
| `flip_vertical` | `boolean` | yes | Whether to flip the blueprint vertically. Defaults to `false`. |
| `by_player` | `PlayerIdentification` | yes | The player that placed the blueprint. Defaults to `nil`. |

**Returns:**

- `int32` — If the blueprint string was invalid, `1` is returned. Otherwise, `nil` is returned.

### `build_checkerboard(area: BoundingBox)`

Sets the given area to the checkerboard lab tiles.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | no | The tile area. |

### `get_property(property: SurfacePropertyID) -> double`

Gets the value of surface property on this surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `property` | `SurfacePropertyID` | no | Property to read. |

**Returns:**

- `double` — Value of the property.

### `set_property(property: SurfacePropertyID, value: double)`

Sets the value of surface property on this surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `property` | `SurfacePropertyID` | no | Property to change. |
| `value` | `double` | no | The wanted value of the property. |

### `create_global_electric_network()`

Creates a global electric network for this surface, if one doesn't exist already.

### `destroy_global_electric_network()`

Destroys the global electric network for this surface, if it exists.

### `execute_lightning(name: EntityID, position: MapPosition)`

Creates lightning. If other entities which can be lightning targets are nearby, the final position
will be adjusted.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `EntityID` | no |  |
| `position` | `MapPosition` | no |  |

### `clear_hidden_tiles()`

Completely removes hidden and double hidden tiles data on this surface.

### `get_default_cover_tile(force: ForceID, tile: TileID) -> LuaTilePrototype`

Gets the cover tile for the given force and tile on this surface if one is set.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no |  |
| `tile` | `TileID` | no |  |

**Returns:**

- `LuaTilePrototype` — 

### `set_default_cover_tile(force: ForceID, from_tile: TileID, to_tile: TileID | nil)`

Sets the cover tile for the given force and tile on this surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no |  |
| `from_tile` | `TileID` | no |  |
| `to_tile` | `TileID | nil` | no |  |
