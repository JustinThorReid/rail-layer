# LuaEntity

The primary interface for interacting with entities through the Lua API. Entities are everything
that exists on the map except for tiles (see [LuaTile](runtime:LuaTile)).  Most functions on
LuaEntity also work when the entity is contained in a ghost.

## Attributes

### `rail_length` — `double` (read-only)

Length of this rail piece.

### `name` — `string` (read-only)

Name of the entity prototype. E.g. "inserter" or "fast-inserter".

### `ghost_name` — `string` (read-only)

Name of the entity or tile contained in this ghost.

### `localised_name` — `LocalisedString` (read-only)

Localised name of the entity.

### `localised_description` — `LocalisedString` (read-only)

### `ghost_localised_name` — `LocalisedString` (read-only)

Localised name of the entity or tile contained in this ghost.

### `ghost_localised_description` — `LocalisedString` (read-only)

### `type` — `string` (read-only)

The entity prototype type of this entity.

### `ghost_type` — `string` (read-only)

The prototype type of the entity or tile contained in this ghost.

### `use_filters` — `boolean`

If set to 'true', this inserter will use filtering logic.  This has no effect if the prototype does
not support filters.

### `active` — `boolean`

Deactivating an entity will stop all its operations (car will stop moving, inserters will stop
working, fish will stop moving etc).  Reading from this returns `false` if the entity is deactivated
in at least one of the following ways: [by script](runtime:LuaEntity::disabled_by_script), [by
circuit network](runtime:LuaEntity::disabled_by_control_behavior), [by
recipe](runtime:LuaEntity::disabled_by_recipe), [by freezing](runtime:LuaEntity::frozen), or by
deconstruction.  Writing to this is deprecated and affects only the
[disabled_by_script](runtime:LuaEntity::disabled_by_script) state.  Entities that are not active
naturally can't be set to be active (setting it to be active will do nothing). Some entities
(Corpse, FireFlame, Roboport, RollingStock, dying entities) need to remain active and will ignore
writes.

### `destructible` — `boolean`

If set to `false`, this entity can't be damaged and won't be attacked automatically. It can however
still be mined.  Entities that are indestructible naturally (they have no health, like smoke,
resource etc) can't be set to be destructible.

### `minable` — `boolean`

Not minable entities can still be destroyed.  Tells if entity reports as being minable right now.
This takes into account `minable_flag` and entity specific conditions (for example rail under
rolling stocks is not minable, vehicle with passenger is not minable).  Write to this field since
2.0.26 is deprecated and it will result in write to `minable_flag` instead.

### `minable_flag` — `boolean`

Script controlled flag that allows entity to be mined.

### `rotatable` — `boolean`

When entity is not to be rotatable (inserter, transport belt etc), it can't be rotated by player
using the R key.  Entities that are not rotatable naturally (like chest or furnace) can't be set to
be rotatable.

### `operable` — `boolean`

Player can't open gui of this entity and he can't quick insert/input stuff in to the entity when it
is not operable.

### `health` — `float` *(optional)*

The current health of the entity, if any. Health is automatically clamped to be between `0` and max
health (inclusive). Entities with a health of `0` can not be attacked.  To get the maximum possible
health of this entity, see [LuaEntity::max_health](runtime:LuaEntity::max_health).

### `max_health` — `float` (read-only)

Max health of this entity.

### `direction` — `defines.direction`

The current direction this entity is facing.

### `mirroring` — `boolean`

Whether the entity is currently mirrored. This state is referred to as `flipped` elsewhere, such as
on the [on_player_flipped_entity](runtime:on_player_flipped_entity) event.  If an entity is
mirrored, it is flipped over the axis that is pointing in the entity's direction. For example if a
mirrored entity is facing north, everything that was defined to be facing east in the prototype now
faces west.

### `supports_direction` — `boolean` (read-only)

Whether the entity has direction. When it is false for this entity, it will always return north
direction when asked for.

### `orientation` — `RealOrientation`

The smooth orientation of this entity. For turrets this is the orientation of the weapon.

### `cliff_orientation` — `CliffOrientation` (read-only)

The orientation of this cliff.

### `relative_turret_orientation` — `RealOrientation` *(optional)*

The relative orientation of the vehicle turret, artillery turret, artillery wagon. `nil` if this
entity isn't a vehicle with a vehicle turret or artillery turret/wagon.  Writing does nothing if the
vehicle doesn't have a turret.  For the turret orientation of non-artillery turrets, use
[LuaEntity::orientation](runtime:LuaEntity::orientation).

### `torso_orientation` — `RealOrientation`

The torso orientation of this spider vehicle.

### `amount` — `uint32`

Count of resource units contained.

### `initial_amount` — `uint32` *(optional)*

Count of initial resource units contained. `nil` if this is not an infinite resource.  If this is
not an infinite resource, writing will produce an error.

### `effectivity_modifier` — `float`

Multiplies the acceleration the car can create for one unit of energy. Defaults to `1`.

### `consumption_modifier` — `float`

Multiplies the energy consumption.

### `friction_modifier` — `float`

Multiplies the car friction rate.

### `driver_is_gunner` — `boolean` *(optional)*

Whether the driver of this car or spidertron is the gunner. If `false`, the passenger is the gunner.
`nil` if this is neither a car or a spidertron.

### `vehicle_automatic_targeting_parameters` — `VehicleAutomaticTargetingParameters`

Read when this spidertron auto-targets enemies

### `speed` — `float` *(optional)*

The current speed if this is a car, rolling stock, projectile or spidertron, or the maximum speed if
this is a unit. The speed is in tiles per tick. `nil` if this is not a car, rolling stock, unit,
projectile or spidertron.  Only the speed of units, cars, and projectiles are writable.

### `effective_speed` — `float` (read-only) *(optional)*

The current speed of this unit in tiles per tick, taking into account any walking speed modifier
given by the tile the unit is standing on. `nil` if this is not a unit.

### `stack` — `LuaItemStack` (read-only)

### `prototype` — `LuaEntityPrototype` (read-only)

The entity prototype of this entity.

### `ghost_prototype` — `LuaEntityPrototype | LuaTilePrototype` (read-only)

The prototype of the entity or tile contained in this ghost.

### `drop_position` — `MapPosition`

Position where the entity puts its stuff.  Mining drills and crafting machines can't have their drop
position changed; inserters must have `allow_custom_vectors` set to true on their prototype to allow
changing the drop position.  Meaningful only for entities that put stuff somewhere, such as mining
drills, crafting machines with a drop target or inserters.

### `pickup_position` — `MapPosition`

Where the inserter will pick up items from.  Inserters must have `allow_custom_vectors` set to true
on their prototype to allow changing the pickup position.

### `drop_target` — `LuaEntity` *(optional)*

The entity this entity is putting its items to. If there are multiple possible entities at the drop-
off point, writing to this attribute allows a mod to choose which one to drop off items to. The
entity needs to collide with the tile box under the drop-off position. `nil` if there is no entity
to put items to, or if this is not an entity that puts items somewhere.

### `pickup_target` — `LuaEntity` *(optional)*

The entity this inserter will attempt to pick up items from. If there are multiple possible entities
at the pick-up point, writing to this attribute allows a mod to choose which one to pick up items
from. The entity needs to collide with the tile box under the pick-up position. `nil` if there is no
entity to pull items from.

### `selected_gun_index` — `uint32` *(optional)*

Index of the currently selected weapon slot of this character, car, or spidertron. `nil` if this
entity doesn't have guns.

### `energy` — `double`

Energy stored in the entity's energy buffer (energy stored in electrical devices etc.). Always 0 for
entities that don't have the concept of energy stored inside.

### `temperature` — `double` *(optional)*

The temperature of this entity's heat energy source. `nil` if this entity does not use a heat energy
source.

### `previous_recipe` — `RecipeIDAndQualityIDPair` (read-only) *(optional)*

The previous recipe this furnace was using, if any.

### `held_stack` — `LuaItemStack` (read-only)

The item stack currently held in an inserter's hand.

### `held_stack_position` — `MapPosition` (read-only)

Current position of the inserter's "hand".

### `train` — `LuaTrain` (read-only) *(optional)*

The train this rolling stock belongs to, if any. `nil` if this is not a rolling stock.

### `neighbours` — `dict[string, LuaEntity] | array[array[LuaEntity]] | LuaEntity` (read-only) *(optional)*

A list of neighbours for certain types of entities. Applies to underground belts, walls, gates,
reactors, heat pipes, cliffs, and pipe-connectable entities.

### `belt_neighbours` — `{inputs: array[LuaEntity], outputs: array[LuaEntity]}` (read-only)

The belt connectable neighbours of this belt connectable entity. Only entities that input to or are
outputs of this entity. Does not contain the other end of an underground belt, see
[LuaEntity::neighbours](runtime:LuaEntity::neighbours) for that.

### `heat_neighbours` — `array[LuaEntity]` (read-only)

The entities connected to this entities heat buffer.

### `fluidbox` — `LuaFluidBox` (read-only)

Fluidboxes of this entity.

### `backer_name` — `string` *(optional)*

The backer name assigned to this entity. Entities that support backer names are labs, locomotives,
radars, roboports, and train stops. `nil` if this entity doesn't support backer names.  While train
stops get the name of a backer when placed down, players can rename them if they want to. In this
case, `backer_name` returns the player-given name of the entity.

### `entity_label` — `string` *(optional)*

The label on this spider-vehicle entity, if any. `nil` if this is not a spider-vehicle.

### `time_to_live` — `uint64`

The ticks left before a combat robot, highlight box, smoke, or sticker entity is destroyed.

### `color` — `Color` *(optional)*

The color of this character, rolling stock, corpse, character corpse, train stop, simple-entity-
with-owner, car, spider-vehicle, or lamp. `nil` if this entity doesn't use custom colors.  Car color
is overridden by the color of the current driver/passenger, if there is one.

### `signal_state` — `defines.signal_state` (read-only)

The state of this rail signal.

### `chain_signal_state` — `defines.chain_signal_state` (read-only)

The state of this chain signal.

### `to_be_looted` — `boolean`

Will this item entity be picked up automatically when the player walks over it?

### `crafting_speed` — `double` (read-only)

The current crafting speed, including speed bonuses from modules and beacons.

### `crafting_progress` — `float`

The current crafting progress, as a number in range `[0, 1]`.

### `bonus_progress` — `double`

The current productivity bonus progress, as a number in range `[0, 1]`.

### `result_quality` — `LuaQualityPrototype` (read) / `QualityID` (write) *(optional)*

The quality produced when this crafting machine finishes crafting. `nil` when crafting is not in
progress.  Note: Writing `nil` is not allowed.

### `productivity_bonus` — `double` (read-only)

The productivity bonus of this entity.  This includes force based bonuses as well as beacon/module
bonuses.

### `pollution_bonus` — `double` (read-only)

The pollution bonus of this entity.

### `speed_bonus` — `double` (read-only)

The speed bonus of this entity.  This includes force based bonuses as well as beacon/module bonuses.

### `consumption_bonus` — `double` (read-only)

The consumption bonus of this entity.

### `belt_to_ground_type` — `BeltConnectionType` (read-only)

Whether this underground belt goes into or out of the ground.

### `loader_type` — `BeltConnectionType`

Whether this loader gets items from or puts item into a container.

### `use_transitional_requests` — `boolean`

When true, the rocket silo will automatically request items for space platforms in orbit.  Setting
the value will have no effect when the silo doesn't support logistics.

### `transitional_request_target` — `LuaSpacePlatform` (read-only) *(optional)*

The space platform in orbit this rocket silo is automatically requesting items for.

### `rocket_parts` — `uint32`

Number of rocket parts in this rocket silo.

### `send_to_orbit_automatically` — `boolean`

Whether this rocket silo is set to send items to orbit automatically. Only relevant if there is an
item prototype with [launch products](runtime:LuaItemPrototype::rocket_launch_products) with
automated [send_to_orbit_mode](runtime:LuaItemPrototype::send_to_orbit_mode), such as the satellite
in vanilla (without Space Age mod).

### `logistic_network` — `LuaLogisticNetwork`

The logistic network this entity is a part of, or `nil` if this entity is not a part of any logistic
network.

### `logistic_cell` — `LuaLogisticCell` (read-only)

The logistic cell this entity is a part of. Will be `nil` if this entity is not a part of any
logistic cell.

### `item_requests` — `ItemWithQualityCounts` (read-only)

Items this ghost will request when revived or items this item request proxy is requesting.

### `insert_plan` — `array[BlueprintInsertPlan]`

The insert plan for this ghost or item request proxy.

### `removal_plan` — `array[BlueprintInsertPlan]`

The removal plan for this item request proxy.

### `player` — `LuaPlayer` (read-only) *(optional)*

The player connected to this character, if any.

### `damage_dealt` — `double`

The damage dealt by this turret, artillery turret, or artillery wagon.

### `kills` — `uint32`

The number of units killed by this turret, artillery turret, or artillery wagon.

### `ignore_unprioritised_targets` — `boolean`

Whether this turret shoots at targets that are not on its priority list.

### `last_user` — `LuaPlayer` (read) / `PlayerIdentification` (write) *(optional)*

The last player that changed any setting on this entity. This includes building the entity, changing
its color, or configuring its circuit network. `nil` if the last user is not part of the save
anymore.

### `electric_buffer_size` — `double` *(optional)*

The buffer size for the electric energy source. `nil` if the entity doesn't have an electric energy
source.  Write access is limited to the ElectricEnergyInterface type.

### `electric_drain` — `double` (read-only) *(optional)*

The electric drain for the electric energy source. `nil` if the entity doesn't have an electric
energy source.

### `electric_emissions_per_joule` — `dict[string, double]` (read-only) *(optional)*

The table of emissions of this energy source in `pollution/Joule`, indexed by pollutant type. `nil`
if the entity doesn't have an electric energy source. Multiplying values in the returned table by
energy consumption in `Watt` gives `pollution/second`.

### `unit_number` — `uint64` (read-only) *(optional)*

A unique number identifying this entity for the lifetime of the save. These are allocated
sequentially, and not re-used (until overflow).  Only entities inheriting from
[EntityWithOwnerPrototype](prototype:EntityWithOwnerPrototype), as well as
[ItemRequestProxyPrototype](prototype:ItemRequestProxyPrototype) and
[EntityGhostPrototype](prototype:EntityGhostPrototype) are assigned a unit number. Returns `nil`
otherwise.

### `ghost_unit_number` — `uint64` (read-only) *(optional)*

The [unit_number](runtime:LuaEntity::unit_number) of the entity contained in this ghost. It is the
same as the unit number of the [EntityWithOwnerPrototype](prototype:EntityWithOwnerPrototype) that
was destroyed to create this ghost. If it was created by other means, or if the inner entity does
not support unit numbers, this property is `nil`.

### `mining_progress` — `double` *(optional)*

The mining progress for this mining drill. Is a number in range [0,
mining_target.prototype.mineable_properties.mining_time]. `nil` if this isn't a mining drill.

### `bonus_mining_progress` — `double` *(optional)*

The bonus mining progress for this mining drill. Read yields a number in range [0,
mining_target.prototype.mineable_properties.mining_time]. `nil` if this isn't a mining drill.

### `mining_area` — `BoundingBox` (read-only)

Area in which this mining drill looks for resources to mine.

### `power_production` — `double`

The power production specific to the ElectricEnergyInterface entity type.

### `power_usage` — `double`

The power usage specific to the ElectricEnergyInterface entity type.

### `bounding_box` — `BoundingBox` (read-only)

[LuaEntityPrototype::collision_box](runtime:LuaEntityPrototype::collision_box) around entity's given
position and respecting the current entity orientation.

### `secondary_bounding_box` — `BoundingBox` (read-only) *(optional)*

The secondary bounding box of this entity or `nil` if it doesn't have one. This only exists for
curved rails, and is automatically determined by the game.

### `selection_box` — `BoundingBox` (read-only)

[LuaEntityPrototype::selection_box](runtime:LuaEntityPrototype::selection_box) around entity's given
position and respecting the current entity orientation.

### `secondary_selection_box` — `BoundingBox` (read-only) *(optional)*

The secondary selection box of this entity or `nil` if it doesn't have one. This only exists for
curved rails, and is automatically determined by the game.

### `mining_target` — `LuaEntity` (read-only) *(optional)*

The mining target, if any.

### `filter_slot_count` — `uint32` (read-only)

The number of filter slots this inserter, loader, mining drill, asteroid collector or logistic
storage container has. 0 if not one of those entities.

### `loader_container` — `LuaEntity` (read-only) *(optional)*

The container entity this loader is pointing at/pulling from depending on the
[LuaEntity::loader_type](runtime:LuaEntity::loader_type), if any.

### `grid` — `LuaEquipmentGrid` (read-only) *(optional)*

This entity's equipment grid, if any.

### `graphics_variation` — `uint8` *(optional)*

The graphics variation for this entity. `nil` if this entity doesn't use graphics variations.

### `tree_color_index` — `uint8`

Index of the tree color.

### `tree_color_index_max` — `uint8` (read-only)

Maximum index of the tree colors.

### `tree_stage_index` — `uint8`

Index of the tree stage.

### `tree_stage_index_max` — `uint8` (read-only)

Maximum index of the tree stages.

### `tree_gray_stage_index` — `uint8`

Index of the tree gray stage

### `tree_gray_stage_index_max` — `uint8` (read-only)

Maximum index of the tree gray stages.

### `burner` — `LuaBurner` (read-only) *(optional)*

The burner energy source for this entity, if any.

### `shooting_target` — `LuaEntity` *(optional)*

The shooting target for this turret, if any. Can't be set to `nil` via script.

### `proxy_target` — `LuaEntity` (read-only) *(optional)*

The target entity for this item-request-proxy, if any.

### `stickers` — `array[LuaEntity]` (read-only) *(optional)*

The sticker entities attached to this entity, if any.

### `sticked_to` — `LuaEntity` (read-only)

The entity this sticker is sticked to.

### `sticker_vehicle_modifiers` — `{friction_modifier: double, speed_max: double, speed_modifier: double}` (read-only) *(optional)*

The vehicle modifiers applied to this entity through the attached stickers.

### `parameters` — `ProgrammableSpeakerParameters`

### `alert_parameters` — `ProgrammableSpeakerAlertParameters`

### `electric_network_statistics` — `LuaFlowStatistics` (read-only)

The electric network statistics for this electric pole.

### `inserter_target_pickup_count` — `uint32` (read-only)

Returns the current target pickup count of the inserter.  This considers the circuit network, manual
override and the inserter stack size limit based on technology.

### `inserter_stack_size_override` — `uint32`

Sets the stack size limit on this inserter.  Set to `0` to reset.

### `products_finished` — `uint32`

The number of products this machine finished crafting in its lifetime.

### `spawning_cooldown` — `double` (read-only)

### `absorbed_pollution` — `double` (read-only)

### `spawn_shift` — `double` (read-only)

### `units` — `array[LuaEntity]` (read-only)

The units associated with this spawner entity.

### `power_switch_state` — `boolean`

The state of this power switch.

### `combinator_description` — `string`

The description on this combinator.

### `effects` — `ModuleEffects` (read-only) *(optional)*

The effects being applied to this entity, if any. For beacons, this is the effect the beacon is
broadcasting.

### `beacons_count` — `uint32` (read-only) *(optional)*

Number of beacons affecting this effect receiver. Can only be used when the entity has an effect
receiver (AssemblingMachine, Furnace, Lab, MiningDrills)

### `infinity_container_filters` — `array[InfinityInventoryFilter]`

The filters for this infinity container.

### `remove_unfiltered_items` — `boolean`

Whether items not included in this infinity container filters should be removed from the container.

### `character_corpse_player_index` — `uint32`

The player index associated with this character corpse.  The index is not guaranteed to be valid so
it should always be checked first if a player with that index actually exists.

### `character_corpse_tick_of_death` — `uint32`

The tick this character corpse died at.

### `character_corpse_death_cause` — `LocalisedString`

The reason this character corpse character died. `""` if there is no reason.

### `associated_player` — `LuaPlayer` (read) / `PlayerIdentification` (write) *(optional)*

The player this character is associated with, if any. Set to `nil` to clear.  The player will be
automatically disassociated when a controller is set on the character. Also, all characters
associated to a player will be logged off when the player logs off in multiplayer.  A character
associated with a player is not directly controlled by any player.

### `tick_of_last_attack` — `uint32`

The last tick this character entity was attacked.

### `tick_of_last_damage` — `uint32`

The last tick this character entity was damaged.

### `splitter_filter` — `ItemFilter` *(optional)*

The filter for this splitter, if any is set.

### `inserter_filter_mode` — `'whitelist' | 'blacklist'` *(optional)*

The filter mode for this filter inserter. `nil` if this inserter doesn't use filters.

### `loader_filter_mode` — `PrototypeFilterMode` *(optional)*

The filter mode for this loader. `nil` if this loader does not support filters.

### `loader_belt_stack_size_override` — `uint8`

The belt stack size override for this loader. Set to `0` to disable. Writing this value requires
[LoaderPrototype::adjustable_belt_stack_size](prototype:LoaderPrototype::adjustable_belt_stack_size)
to be `true`.

### `mining_drill_filter_mode` — `'whitelist' | 'blacklist'` *(optional)*

The filter mode for this mining drill. `nil` if this mining drill doesn't have filters.

### `splitter_input_priority` — `'left' | 'none' | 'right'`

The input priority for this splitter.

### `splitter_output_priority` — `'left' | 'none' | 'right'`

The output priority for this splitter.

### `inserter_spoil_priority` — `SpoilPriority`

The spoil priority for this inserter.

### `armed` — `boolean` (read-only)

Whether this land mine is armed.

### `recipe_locked` — `boolean`

When locked; the recipe in this assembling machine can't be changed by the player.

### `connected_rail` — `LuaEntity` (read-only) *(optional)*

The rail entity this train stop is connected to, if any.

### `connected_rail_direction` — `defines.rail_direction` (read-only)

Rail direction to which this train stop is binding. This returns a value even when no rails are
present.

### `trains_in_block` — `uint32` (read-only)

The number of trains in this rail block for this rail entity.

### `timeout` — `uint32`

The timeout that's left on this landmine in ticks. It describes the time between the landmine being
placed and it being armed.

### `neighbour_bonus` — `double` (read-only)

The current total neighbour bonus of this reactor.

### `ai_settings` — `LuaAISettings` (read-only)

The ai settings of this unit.

### `highlight_box_type` — `CursorBoxRenderType`

The highlight box type of this highlight box entity.

### `highlight_box_blink_interval` — `uint32`

The blink interval of this highlight box entity. `0` indicates no blink.

### `status` — `defines.entity_status` (read-only) *(optional)*

The status of this entity, if any.  This is always the actual status of the entity, even if
[LuaEntity::custom_status](runtime:LuaEntity::custom_status) is set.

### `custom_status` — `CustomEntityStatus` *(optional)*

A custom status for this entity that will be displayed in the GUI.

### `enable_logistics_while_moving` — `boolean`

Whether equipment grid logistics are enabled while this vehicle is moving.

### `render_player` — `LuaPlayer` (read) / `PlayerIdentification` (write) *(optional)*

The player that this `simple-entity-with-owner`, `simple-entity-with-force`, or `highlight-box` is
visible to. `nil` when this entity is rendered for all players.

### `render_to_forces` — `array[LuaForce]` (read) / `ForceSet` (write) *(optional)*

The forces that this `simple-entity-with-owner` or `simple-entity-with-force` is visible to. `nil`
or an empty array when this entity is rendered for all forces.

### `pump_rail_target` — `LuaEntity` (read-only) *(optional)*

The rail target of this pump, if any.

### `valve_threshold_override` — `float` *(optional)*

The threshold override of this valve, or `nil` if an override is not defined.  If no override is
defined, the threshold is taken from
[LuaEntityPrototype::valve_threshold](runtime:LuaEntityPrototype::valve_threshold).

### `electric_network_id` — `uint32` (read-only) *(optional)*

Returns the id of the electric network that this entity is connected to, if any.

### `allow_dispatching_robots` — `boolean`

Whether this character's personal roboports are allowed to dispatch robots.

### `energy_generated_last_tick` — `double` (read-only)

How much energy this generator generated in the last tick.

### `storage_filter` — `ItemIDAndQualityIDPair` (read) / `ItemWithQualityID` (write) *(optional)*

The storage filter for this logistic storage container.  Useable only on logistic containers with
the `"storage"` [logistic_mode](runtime:LuaEntityPrototype::logistic_mode).

### `request_from_buffers` — `boolean`

Whether this requester chest is set to also request from buffer chests.  Useable only on entities
that have requester slots.

### `corpse_expires` — `boolean`

Whether this corpse will ever fade away.

### `corpse_immune_to_entity_placement` — `boolean`

If true, corpse won't be destroyed when entities are placed over it. If false, whether corpse will
be removed or not depends on value of [CorpsePrototype::remove_on_entity_placement](prototype:Corpse
Prototype::remove_on_entity_placement).

### `tags` — `Tags` *(optional)*

The tags associated with this entity ghost. `nil` if this is not an entity ghost or when the ghost
has no tags.

### `time_to_next_effect` — `uint32`

The ticks until the next trigger effect of this smoke-with-trigger.

### `autopilot_destination` — `MapPosition` *(optional)*

Destination of this spidertron's autopilot, if any. Writing `nil` clears all destinations.

### `autopilot_destinations` — `array[MapPosition]` (read-only)

The queued destination positions of spidertron's autopilot.

### `trains_count` — `uint32` (read-only)

Amount of trains related to this particular train stop. Includes train stopped at this train stop
(until it finds a path to next target) and trains having this train stop as goal or waypoint.  Train
may be included multiple times when braking distance covers this train stop multiple times.  Value
may be read even when train stop has no control behavior.

### `trains_limit` — `uint32`

Amount of trains above which no new trains will be sent to this train stop. Writing nil will disable
the limit (will set a maximum possible value).  When a train stop has a control behavior with wire
connected and set_trains_limit enabled, this value will be overwritten by it.

### `is_military_target` — `boolean`

Whether this entity is a MilitaryTarget. Can be written to if [LuaEntityPrototype::allow_run_time_ch
ange_of_is_military_target](runtime:LuaEntityPrototype::allow_run_time_change_of_is_military_target)
returns `true`.

### `is_entity_with_owner` — `boolean` (read-only)

If this entity is EntityWithOwner

### `is_entity_with_health` — `boolean` (read-only)

If this entity is EntityWithHealth

### `combat_robot_owner` — `LuaEntity` *(optional)*

The owner of this combat robot, if any.

### `link_id` — `uint32`

The link ID this linked container is using.

### `follow_target` — `LuaEntity` *(optional)*

The follow target of this spidertron, if any.

### `follow_offset` — `Vector` *(optional)*

The follow offset of this spidertron, if any entity is being followed. This is randomized each time
the follow entity is set.

### `linked_belt_type` — `BeltConnectionType`

Type of linked belt. Changing type will also flip direction so the belt is out of the same side.
Can only be changed when linked belt is disconnected (has no neighbour set).

### `linked_belt_neighbour` — `LuaEntity` (read-only) *(optional)*

Neighbour to which this linked belt is connected to, if any.  May return entity ghost which contains
linked belt to which connection is made.

### `quality` — `LuaQualityPrototype` (read-only)

The quality of this entity.  Not all entities support quality and will give the "normal" quality
back if they don't.

### `rail_layer` — `defines.rail_layer` (read-only)

Gets rail layer of a given signal

### `radar_scan_progress` — `float` (read-only)

The current radar scan progress, as a number in range `[0, 1]`.

### `name_tag` — `string`

Name tag of this entity. Returns `nil` if entity has no name tag. When name tag is already used by
other entity, the name will be removed from the other entity. Entity name tags can also be set in
the entity "extra settings" GUI in the map editor.

### `rocket_silo_status` — `defines.rocket_silo_status` (read-only)

The status of this rocket silo entity.

### `tile_width` — `uint32` (read-only)

Specifies the tiling size of the entity, is used to decide, if the center should be in the center of
the tile (odd tile size dimension) or on the tile border (even tile size dimension). Uses the
current direction of the entity.

### `tile_height` — `uint32` (read-only)

Specifies the tiling size of the entity, is used to decide, if the center should be in the center of
the tile (odd tile size dimension) or on the tile border (even tile size dimension). Uses the
current direction of the entity.

### `crane_end_position_3d` — `Vector3D` (read-only)

Returns current position in 3D for the end of the crane of this entity.

### `crane_destination` — `MapPosition`

Destination of the crane of this entity. Throws when trying to set the destination out of range.

### `crane_destination_3d` — `Vector3D`

Destination of the crane of this entity in 3D. Throws when trying to set the destination out of
range.

### `crane_grappler_destination` — `?` (read) / `MapPosition` (write)

Will set destination for the grappler of crane of this entity. The crane grappler will start moving
to reach the destination, but the rest of the arm will remain stationary. Throws when trying to set
the destination out of range.

### `crane_grappler_destination_3d` — `?` (read) / `Vector3D` (write)

Will set destination in 3D for the grappler of crane of this entity. The crane grappler will start
moving to reach the destination, but the rest of the arm will remain stationary. Throws when trying
to set the destination out of range.

### `owned_plants` — `array[LuaEntity]` (read-only)

Plants registered by this agricultural tower. One plant can be registered in multiple agricultural
towers.

### `copy_color_from_train_stop` — `boolean`

If this rolling stock has 'copy color from train stop' enabled.

### `is_headed_to_trains_front` — `boolean` (read-only)

If the rolling stock is facing train's front.

### `draw_data` — `RollingStockDrawData` (read-only)

Gives a draw data of the given entity if it supports such data.

### `train_stop_priority` — `uint8`

Priority of this train stop.

### `belt_shape` — `'straight' | 'left' | 'right'` (read-only)

Gives what is the current shape of a transport-belt.

### `gps_tag` — `string` (read-only)

Returns a [rich text](https://wiki.factorio.com/Rich_text) string containing this entity's position
and surface name as a gps tag. [Printing](runtime:LuaGameScript::print) it will ping the location of
the entity.

### `commandable` — `LuaCommandable` (read-only) *(optional)*

Returns a LuaCommandable for this entity or nil if entity is not commandable. Units and SpiderUnits
are commandable.

### `fluids_count` — `uint32` (read-only)

Returns count of fluid storages. This includes fluid storages provided by fluidboxes but also covers
other fluid storages like fluid turret's internal buffer and fluid wagon's fluid since they are not
fluidbox and cannot be exposed through [LuaFluidBox](runtime:LuaFluidBox).

### `tick_grown` — `MapTick`

The tick when this plant is fully grown.

### `always_on` — `boolean`

If the lamp is always on when not driven by control behavior.

### `artillery_auto_targeting` — `boolean`

If this artillery auto-targets enemies.

### `robot_order_queue` — `array[WorkerRobotOrder]` (read-only)

Get the current queue of robot orders.

### `procession_tick` — `MapTick`

how far into the current procession the cargo pod is.

### `is_updatable` — `boolean` (read-only)

Whether the entity is updatable and considered an UpdatableEntity.

### `disabled_by_script` — `boolean`

If the updatable entity is disabled by script.  Note: Some entities (Corpse, FireFlame, Roboport,
RollingStock, dying entities) need to remain active and will ignore writes.  If this entity is not
considered [updatable](runtime:LuaEntity::is_updatable) then this always returns `false` and writes
will be ignored.

### `disabled_by_control_behavior` — `boolean` (read-only)

If the updatable entity is disabled by control behavior.  Always returns `false` if this entity is
not considered [updatable](runtime:LuaEntity::is_updatable).

### `disabled_by_recipe` — `boolean` (read-only)

If the assembling machine is disabled by recipe, e.g. due to [AssemblingMachinePrototype::disabled_w
hen_recipe_not_researched](prototype:AssemblingMachinePrototype::disabled_when_recipe_not_researched
).  Always returns `false` if this entity is not considered
[updatable](runtime:LuaEntity::is_updatable).

### `is_freezable` — `boolean` (read-only)

Whether the entity is freezable and considered a FreezableEntity.

### `frozen` — `boolean` (read-only)

Whether the freezable entity is currently frozen.  Always returns `false` if this entity is not
considered [freezable](runtime:LuaEntity::is_freezable).

### `cargo_hatches` — `array[LuaCargoHatch]` (read-only)

The cargo hatches owned by this entity if any.

### `cargo_pod_state` — `'awaiting_launch' | 'ascending' | 'surface_transition' | 'descending' | 'parking'` (read-only)

The state of this cargo pod entity.

### `cargo_pod_destination` — `CargoDestination`

The destination of this cargo pod entity.  Use
[force_finish_ascending](runtime:LuaEntity::force_finish_ascending) if you want it to only descend
from orbit.

### `cargo_pod_origin` — `LuaEntity` *(optional)*

The origin of this cargo pod entity. (Must be a silo, hub or pad)

### `attached_cargo_pod` — `LuaEntity` (read-only) *(optional)*

The cargo pod attached to this rocket silo rocket if any.

### `rocket` — `LuaEntity` (read-only) *(optional)*

The rocket silo rocket this cargo pod is attached to, or rocket silo rocket attached to this rocket
silo - if any.

### `item_request_proxy` — `LuaEntity` (read-only) *(optional)*

The first found item request proxy targeting this entity.

### `base_damage_modifiers` — `TriggerModifierData`

### `bonus_damage_modifiers` — `TriggerModifierData`

### `cargo_bay_connection_owner` — `LuaEntity` (read-only) *(optional)*

The space platform hub or cargo landing pad this cargo bay is connected to if any.

### `pickup_from_left_lane` — `boolean`

For inserters taking items from transport belt connectables, this determines whether the inserter is
allowed to take items from the left lane.

### `pickup_from_right_lane` — `boolean`

For inserters taking items from transport belt connectables, this determines whether the inserter is
allowed to take items from the right lane.

### `segmented_unit` — `LuaSegmentedUnit` (read-only) *(optional)*

The segmented unit object that the segment entity is a part of.

### `pumped_last_tick` — `double` (read-only)

The amount of fluid moved by this offshore pump or normal pump in the last tick.

### `created_by_corpse` — `LuaEntity` (read-only) *(optional)*

The corpse that caused this entity ghost to be created, if any.

### `priority_targets` — `array[LuaEntityPrototype]` (read-only)

The priority targets for this turret (if any).

### `proxy_target_entity` — `LuaEntity` *(optional)*

Entity of which inventory is exposed by this ProxyContainer

### `proxy_target_inventory` — `defines.inventory`

Inventory index of the inventory that is exposed by this ProxyContainer

### `display_panel_text` — `LocalisedString`

Text visible on the display panel. Can be written only when it is not set by control behavior.

### `display_panel_icon` — `SignalID` *(optional)*

Icon visible on the display panel. Can be written only when it is not set by control behavior.

### `display_panel_always_show` — `boolean`

### `display_panel_show_in_chart` — `boolean`

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

### `get_output_inventory() -> LuaInventory`

Gets the entity's output inventory if it has one.

**Returns:**

- `LuaInventory` — A reference to the entity's output inventory.

### `get_module_inventory() -> LuaInventory`

Inventory for storing modules of this entity; `nil` if this entity has no module inventory.

**Returns:**

- `LuaInventory` — 

### `get_fuel_inventory() -> LuaInventory`

The fuel inventory for this entity or `nil` if this entity doesn't have a fuel inventory.

**Returns:**

- `LuaInventory` — 

### `get_burnt_result_inventory() -> LuaInventory`

The burnt result inventory for this entity or `nil` if this entity doesn't have a burnt result
inventory.

**Returns:**

- `LuaInventory` — 

### `damage(damage: float, force: ForceID, ?type: DamageTypeID, ?source: LuaEntity, ?cause: LuaEntity) -> float`

Damages the entity.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `damage` | `float` | no | The amount of damage to be done. |
| `force` | `ForceID` | no | The force that will be doing the damage. |
| `type` | `DamageTypeID` | yes | The type of damage to be done, defaults to `"impact"`. |
| `source` | `LuaEntity` | yes | The entity that is directly dealing the damage (e.g. the projectile, flame, sticker, grenade, laser beam, etc.). Need... |
| `cause` | `LuaEntity` | yes | The entity that originally triggered the events that led to this damage being dealt (e.g. the character, turret, enem... |

**Returns:**

- `float` — the total damage actually applied after resistances.

### `can_be_destroyed() -> boolean`

Whether the entity can be destroyed

**Returns:**

- `boolean` — 

### `destroy(?do_cliff_correction: boolean, ?raise_destroy: boolean, ?player: PlayerIdentification, ?undo_index: uint32) -> boolean`

Destroys the entity.  Not all entities can be destroyed - things such as rails under trains cannot
be destroyed until the train is moved or destroyed.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `do_cliff_correction` | `boolean` | yes | Whether neighbouring cliffs should be corrected. Defaults to `false`. |
| `raise_destroy` | `boolean` | yes | If `true`, [script_raised_destroy](runtime:script_raised_destroy) will be called. Defaults to `false`. |
| `player` | `PlayerIdentification` | yes | The player whose undo queue this action should be added to. |
| `undo_index` | `uint32` | yes | The index of the undo item to add this action to. An index of `0` creates a new undo item for it. Defaults to putting... |

**Returns:**

- `boolean` — Returns `false` if the entity was valid and destruction failed, `true` in all other cases.

### `die(?force: ForceID, ?cause: LuaEntity) -> boolean`

Immediately kills the entity. Does nothing if the entity doesn't have health.  Unlike
[LuaEntity::destroy](runtime:LuaEntity::destroy), `die` will trigger the
[on_entity_died](runtime:on_entity_died) event and the entity will produce a corpse and drop loot if
it has any.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | yes | The force to attribute the kill to. |
| `cause` | `LuaEntity` | yes | The cause to attribute the kill to. |

**Returns:**

- `boolean` — Whether the entity was successfully killed.

### `has_flag(flag: EntityPrototypeFlag) -> boolean`

Test whether this entity's prototype has a certain flag set.  `entity.has_flag(f)` is a shortcut for
`entity.prototype.has_flag(f)`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `flag` | `EntityPrototypeFlag` | no | The flag to test. |

**Returns:**

- `boolean` — `true` if this entity has the given flag set.

### `ghost_has_flag(flag: EntityPrototypeFlag) -> boolean`

Same as [LuaEntity::has_flag](runtime:LuaEntity::has_flag), but targets the inner entity on a entity
ghost.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `flag` | `EntityPrototypeFlag` | no | The flag to test. |

**Returns:**

- `boolean` — `true` if the entity has the given flag set.

### `add_market_item(offer: Offer)`

Offer a thing on the market.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `offer` | `Offer` | no |  |

### `remove_market_item(offer: uint32) -> boolean`

Remove an offer from a market.  The other offers are moved down to fill the gap created by removing
the offer, which decrements the overall size of the offer array.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `offer` | `uint32` | no | Index of offer to remove. |

**Returns:**

- `boolean` — `true` if the offer was successfully removed; `false` when the given index was not valid.

### `get_market_items() -> array[Offer]`

Get all offers in a market as an array.

**Returns:**

- `array[Offer]` — 

### `clear_market_items()`

Removes all offers from a market.

### `order_deconstruction(force: ForceID, ?player: PlayerIdentification, ?undo_index: uint32) -> boolean`

Sets the entity to be deconstructed by construction robots.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no | The force whose robots are supposed to do the deconstruction. |
| `player` | `PlayerIdentification` | yes | The player to set the last_user to, if any. Also the player whose undo queue this action should be added to. |
| `undo_index` | `uint32` | yes | The index of the undo item to add this action to. An index of `0` creates a new undo item for it. An index of `1` add... |

**Returns:**

- `boolean` — if the entity was marked for deconstruction.

### `cancel_deconstruction(force: ForceID, ?player: PlayerIdentification)`

Cancels deconstruction if it is scheduled, does nothing otherwise.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no | The force who did the deconstruction order. |
| `player` | `PlayerIdentification` | yes | The player to set the `last_user` to if any. |

### `to_be_deconstructed() -> boolean`

Is this entity marked for deconstruction?

**Returns:**

- `boolean` — 

### `order_upgrade(target: EntityWithQualityID, force: ForceID, ?player: PlayerIdentification, ?undo_index: uint32) -> boolean`

Sets the entity to be upgraded by construction robots.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `target` | `EntityWithQualityID` | no | The prototype of the entity to upgrade to. |
| `force` | `ForceID` | no | The force whose robots are supposed to do the upgrade. |
| `player` | `PlayerIdentification` | yes | The player whose undo queue this action should be added to. |
| `undo_index` | `uint32` | yes | The index of the undo item to add this action to. An index of `0` creates a new undo item for it. Defaults to putting... |

**Returns:**

- `boolean` — Whether the entity was marked for upgrade.

### `cancel_upgrade(force: ForceID, ?player: PlayerIdentification) -> boolean`

Cancels upgrade if it is scheduled, does nothing otherwise.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no | The force who did the upgrade order. |
| `player` | `PlayerIdentification` | yes | The player to set the last_user to if any. |

**Returns:**

- `boolean` — Whether the cancel was successful.

### `to_be_upgraded() -> boolean`

Is this entity marked for upgrade?

**Returns:**

- `boolean` — 

### `apply_upgrade() -> (LuaEntity, LuaEntity)`

Upgrades this entity in place if it's marked to be upgraded.

**Returns:**

- `LuaEntity` — The first upgraded entity - `nil` if this entity is not marked for upgrade.

- `LuaEntity` — The second upgraded entity - `nil` if this entity is not marked for upgrade.

### `is_crafting() -> boolean`

Returns whether a craft is currently in process. It does not indicate whether progress is currently
being made, but whether a crafting process has been started in this machine.

**Returns:**

- `boolean` — 

### `is_opened() -> boolean`

**Returns:**

- `boolean` — `true` if this gate is currently opened.

### `is_opening() -> boolean`

**Returns:**

- `boolean` — `true` if this gate is currently opening.

### `is_closed() -> boolean`

**Returns:**

- `boolean` — `true` if this gate is currently closed.

### `is_closing() -> boolean`

**Returns:**

- `boolean` — `true` if this gate is currently closing

### `request_to_open(force: ForceID, ?extra_time: uint32)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no | The force that requests the gate to be open. |
| `extra_time` | `uint32` | yes | Extra ticks to stay open. |

### `request_to_close(force: ForceID)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no | The force that requests the gate to be closed. |

### `get_transport_line(index: defines.transport_line) -> LuaTransportLine`

Get a transport line of a belt or belt connectable entity.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `defines.transport_line` | no | Index of the requested transport line. Transport lines are 1-indexed. |

**Returns:**

- `LuaTransportLine` — 

### `get_item_insert_specification(position: MapPosition) -> (uint32, float)`

Get an item insert specification onto a belt connectable: for a given map position provides into
which line at what position item should be inserted to be closest to the provided position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Position where the item is to be inserted. |

**Returns:**

- `uint32` — Index of the transport line that is closest to the provided map position.

- `float` — Position along the transport line where item should be dropped.

### `get_line_item_position(index: defines.transport_line, position: float) -> MapPosition`

Get a map position related to a position on a transport line.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `defines.transport_line` | no | Index of the transport line. Transport lines are 1-indexed. |
| `position` | `float` | no | Linear position along the transport line. Clamped to the transport line range. |

**Returns:**

- `MapPosition` — 

### `get_max_transport_line_index() -> defines.transport_line`

Get the maximum transport line index of a belt or belt connectable entity.

**Returns:**

- `defines.transport_line` — 

### `launch_rocket(?destination: CargoDestination, ?character: LuaEntity) -> boolean`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `destination` | `CargoDestination` | yes |  |
| `character` | `LuaEntity` | yes | If provided, must be of `character` type. |

**Returns:**

- `boolean` — `true` if the rocket was successfully launched. Return value of `false` means the silo is not ready for launch.

### `revive(?raise_revive: boolean, ?overflow: LuaInventory) -> (dict[string, uint32], LuaEntity, LuaEntity)`

Revive a ghost, which turns it from a ghost into a real entity or tile.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `raise_revive` | `boolean` | yes | If true, and an entity ghost; [script_raised_revive](runtime:script_raised_revive) will be called. Else if true, and ... |
| `overflow` | `LuaInventory` | yes | Items that would be deleted will be transferred to this inventory. Must be a script inventory or inventory of other e... |

**Returns:**

- `dict[string, uint32]` — Any items the new real entity collided with or `nil` if the ghost could not be revived.

- `LuaEntity` — The revived entity if an entity ghost was successfully revived.

- `LuaEntity` — The item request proxy if one was created.

### `silent_revive(?raise_revive: boolean, ?overflow: LuaInventory) -> (ItemWithQualityCounts, LuaEntity, LuaEntity)`

Revives a ghost silently, so the revival makes no sound and no smoke is created.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `raise_revive` | `boolean` | yes | If true, and an entity ghost; [script_raised_revive](runtime:script_raised_revive) will be called. Else if true, and ... |
| `overflow` | `LuaInventory` | yes | Items that would be deleted will be transferred to this inventory. Must be a script inventory or inventory of other e... |

**Returns:**

- `ItemWithQualityCounts` — Any items the new real entity collided with or `nil` if the ghost could not be revived.

- `LuaEntity` — The revived entity if an entity ghost was successfully revived.

- `LuaEntity` — The item request proxy if one was created.

### `get_connected_rail(rail_direction: defines.rail_direction, rail_connection_direction: defines.rail_connection_direction) -> (LuaEntity, defines.rail_direction, defines.rail_connection_direction)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `rail_direction` | `defines.rail_direction` | no |  |
| `rail_connection_direction` | `defines.rail_connection_direction` | no |  |

**Returns:**

- `LuaEntity` — Rail connected in the specified manner to this one, `nil` if unsuccessful.

- `defines.rail_direction` — Rail direction of the returned rail which points to origin rail

- `defines.rail_connection_direction` — Turn to be taken when going back from returned rail to origin rail

### `get_connected_rails() -> array[LuaEntity]`

Get the rails that this signal is connected to.

**Returns:**

- `array[LuaEntity]` — 

### `get_rail_segment_signal(direction: defines.rail_direction, in_else_out: boolean) -> LuaEntity`

Get the rail signal at the start/end of the rail segment this rail is in.  A rail segment is a
continuous section of rail with no branches, signals, nor train stops.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `defines.rail_direction` | no | The direction of travel relative to this rail. |
| `in_else_out` | `boolean` | no | If true, gets the signal at the entrance of the rail segment, otherwise gets the signal at the exit of the rail segment. |

**Returns:**

- `LuaEntity` — `nil` if the rail segment doesn't start/end with a signal.

### `get_rail_segment_stop(direction: defines.rail_direction) -> LuaEntity`

Get train stop at the start/end of the rail segment this rail is in.  A rail segment is a continuous
section of rail with no branches, signals, nor train stops.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `defines.rail_direction` | no | The direction of travel relative to this rail. |

**Returns:**

- `LuaEntity` — `nil` if the rail segment doesn't start/end with a train stop.

### `get_rail_segment_end(direction: defines.rail_direction) -> (LuaEntity, defines.rail_direction)`

Get the rail at the end of the rail segment this rail is in.  A rail segment is a continuous section
of rail with no branches, signals, nor train stops.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `defines.rail_direction` | no |  |

**Returns:**

- `LuaEntity` — The rail entity.

- `defines.rail_direction` — A rail direction pointing out of the rail segment from the end rail.

### `get_rail_segment_rails(direction: defines.rail_direction) -> array[LuaEntity]`

Get all rails of a rail segment this rail is in  A rail segment is a continuous section of rail with
no branches, signals, nor train stops.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `defines.rail_direction` | no | Selects end of this rail that points to a rail segment end from which to start returning rails |

**Returns:**

- `array[LuaEntity]` — Rails of this rail segment

### `get_rail_segment_length() -> double`

Get the length of the rail segment this rail is in.  A rail segment is a continuous section of rail
with no branches, signals, nor train stops.

**Returns:**

- `double` — 

### `get_rail_segment_overlaps() -> array[LuaEntity]`

Get a rail from each rail segment that overlaps with this rail's rail segment.  A rail segment is a
continuous section of rail with no branches, signals, nor train stops.

**Returns:**

- `array[LuaEntity]` — 

### `is_rail_in_same_rail_segment_as(other_rail: LuaEntity) -> boolean`

Checks if this rail and other rail both belong to the same rail segment.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other_rail` | `LuaEntity` | no |  |

**Returns:**

- `boolean` — 

### `is_rail_in_same_rail_block_as(other_rail: LuaEntity) -> boolean`

Checks if this rail and other rail both belong to the same rail block.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other_rail` | `LuaEntity` | no |  |

**Returns:**

- `boolean` — 

### `get_parent_signals() -> array[LuaEntity]`

Returns all parent signals. Parent signals are always RailChainSignal. Parent signals are those
signals that are checking state of this signal to determine their own chain state.

**Returns:**

- `array[LuaEntity]` — 

### `get_child_signals() -> array[LuaEntity]`

Returns all child signals. Child signals can be either RailSignal or RailChainSignal. Child signals
are signals which are checked by this signal to determine a chain state.

**Returns:**

- `array[LuaEntity]` — 

### `get_inbound_signals() -> array[LuaEntity]`

Returns all signals guarding entrance to a rail block this rail belongs to.

**Returns:**

- `array[LuaEntity]` — 

### `get_outbound_signals() -> array[LuaEntity]`

Returns all signals guarding exit from a rail block this rail belongs to.

**Returns:**

- `array[LuaEntity]` — 

### `get_filter(slot_index: uint32) -> ItemFilter | EntityID | AsteroidChunkID`

Get the filter for a slot in an inserter, loader, mining drill, asteroid collector, or logistic
storage container. The entity must allow filters.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `slot_index` | `uint32` | no | Index of the slot to get the filter for. |

**Returns:**

- `ItemFilter | EntityID | AsteroidChunkID` — The filter, or `nil` if the given slot has no filter.

### `set_filter(index: uint32, ?filter: ItemFilter | ItemWithQualityID | EntityID | AsteroidChunkID)`

Set the filter for a slot in an inserter (ItemFilter), loader (ItemFilter), mining drill (EntityID),
asteroid collector (AsteroidChunkID) or logistic storage container (ItemWithQualityID). The entity
must allow filters.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | Index of the slot to set the filter for. |
| `filter` | `ItemFilter | ItemWithQualityID | EntityID | AsteroidChunkID` | yes | The item or entity to filter, or `nil` to clear the filter. |

### `get_infinity_container_filter(index: uint32) -> InfinityInventoryFilter`

Gets the filter for this infinity container at the given index, or `nil` if the filter index doesn't
exist or is empty.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index to get. |

**Returns:**

- `InfinityInventoryFilter` — 

### `set_infinity_container_filter(index: uint32, filter: InfinityInventoryFilter | nil)`

Sets the filter for this infinity container at the given index.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index to set. |
| `filter` | `InfinityInventoryFilter | nil` | no | The new filter, or `nil` to clear the filter. |

### `get_infinity_pipe_filter() -> InfinityPipeFilter`

Gets the filter for this infinity pipe, or `nil` if the filter is empty.

**Returns:**

- `InfinityPipeFilter` — 

### `set_infinity_pipe_filter(filter: InfinityPipeFilter | nil)`

Sets the filter for this infinity pipe.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `InfinityPipeFilter | nil` | no | The new filter, or `nil` to clear the filter. |

### `get_heat_setting() -> HeatSetting`

Gets the heat setting for this heat interface.

**Returns:**

- `HeatSetting` — 

### `set_heat_setting(filter: HeatSetting)`

Sets the heat setting for this heat interface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `HeatSetting` | no | The new setting. |

### `get_control_behavior() -> LuaControlBehavior`

Gets the control behavior of the entity (if any).

**Returns:**

- `LuaControlBehavior` — The control behavior or `nil`.

### `get_or_create_control_behavior() -> LuaControlBehavior`

Gets (and or creates if needed) the control behavior of the entity.

**Returns:**

- `LuaControlBehavior` — The control behavior or `nil`.

### `get_circuit_network(wire_connector_id: defines.wire_connector_id) -> LuaCircuitNetwork`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `wire_connector_id` | `defines.wire_connector_id` | no | Wire connector to get circuit network for. |

**Returns:**

- `LuaCircuitNetwork` — The circuit network or nil.

### `get_signal(signal: SignalID, wire_connector_id: defines.wire_connector_id, ?extra_wire_connector_id: defines.wire_connector_id) -> int32`

Read a single signal from the selected wire connector

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `signal` | `SignalID` | no | The signal to read. |
| `wire_connector_id` | `defines.wire_connector_id` | no | Wire connector ID from which to get the signal |
| `extra_wire_connector_id` | `defines.wire_connector_id` | yes | Additional wire connector ID. If specified, signal will be added to the result |

**Returns:**

- `int32` — The current value of the signal.

### `get_signals(wire_connector_id: defines.wire_connector_id, ?extra_wire_connector_id: defines.wire_connector_id) -> array[Signal]`

Read all signals from the selected wire connector.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `wire_connector_id` | `defines.wire_connector_id` | no | Wire connector ID from which to get the signal |
| `extra_wire_connector_id` | `defines.wire_connector_id` | yes | Additional wire connector ID. If specified, signals will be added to the result |

**Returns:**

- `array[Signal]` — Current values of all signals.

### `supports_backer_name() -> boolean`

Whether this entity supports a backer name.

**Returns:**

- `boolean` — 

### `copy_settings(entity: LuaEntity, ?by_player: PlayerIdentification) -> ItemWithQualityCounts`

Copies settings from the given entity onto this entity.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no |  |
| `by_player` | `PlayerIdentification` | yes | If provided, the copying is done 'as' this player and [on_entity_settings_pasted](runtime:on_entity_settings_pasted) ... |

**Returns:**

- `ItemWithQualityCounts` — Any items removed from this entity as a result of copying the settings.

### `get_logistic_point(?index: defines.logistic_member_index) -> LuaLogisticPoint | array[LuaLogisticPoint]`

Gets all the `LuaLogisticPoint`s that this entity owns. Optionally returns only the point specified
by the index parameter.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `defines.logistic_member_index` | yes | If provided, this method only returns the `LuaLogisticPoint` specified by this index, or `nil` if it doesn't exist. |

**Returns:**

- `LuaLogisticPoint | array[LuaLogisticPoint]` — 

### `play_note(instrument: uint32, note: uint32, ?stop_playing_sounds: boolean) -> boolean`

Plays a note with the given instrument and note.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `instrument` | `uint32` | no |  |
| `note` | `uint32` | no |  |
| `stop_playing_sounds` | `boolean` | yes |  |

**Returns:**

- `boolean` — Whether the request is valid. The sound may or may not be played depending on polyphony settings.

### `connect_rolling_stock(direction: defines.rail_direction) -> boolean`

Connects the rolling stock in the given direction.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `defines.rail_direction` | no |  |

**Returns:**

- `boolean` — Whether any connection was made

### `disconnect_rolling_stock(direction: defines.rail_direction) -> boolean`

Tries to disconnect this rolling stock in the given direction.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `defines.rail_direction` | no |  |

**Returns:**

- `boolean` — If anything was disconnected

### `update_connections()`

Reconnect loader, beacon, cliff and mining drill connections to entities that might have been
teleported out or in by the script. The game doesn't do this automatically as we don't want to lose
performance by checking this in normal games.

### `get_recipe() -> (LuaRecipe, LuaQualityPrototype)`

Current recipe being assembled by this machine, if any.

**Returns:**

- `LuaRecipe` — 

- `LuaQualityPrototype` — 

### `set_recipe(?recipe: RecipeID, ?quality: QualityID) -> ItemWithQualityCounts`

Sets the given recipe in this assembly machine.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `recipe` | `RecipeID` | yes | The new recipe. Writing `nil` clears the recipe, if any. |
| `quality` | `QualityID` | yes | The quality. If not provided `normal` is used. |

**Returns:**

- `ItemWithQualityCounts` — Any items removed from this entity as a result of setting the recipe.

### `rotate(?reverse: boolean, ?by_player: PlayerIdentification) -> boolean`

Rotates this entity as if the player rotated it.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `reverse` | `boolean` | yes | If `true`, rotate the entity in the counter-clockwise direction. |
| `by_player` | `PlayerIdentification` | yes |  |

**Returns:**

- `boolean` — Whether the rotation was successful.

### `get_driver() -> LuaEntity | LuaPlayer`

Gets the driver of this vehicle if any.

**Returns:**

- `LuaEntity | LuaPlayer` — `nil` if the vehicle contains no driver. To check if there's a passenger see [LuaEntity::get_passenger](runtime:LuaEn...

### `set_driver(driver: LuaEntity | PlayerIdentification | nil)`

Sets the driver of this vehicle.  This differs from
[LuaEntity::set_passenger](runtime:LuaEntity::set_passenger) in that the passenger can't drive the
vehicle.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `driver` | `LuaEntity | PlayerIdentification | nil` | no | The new driver. Writing `nil` ejects the current driver, if any. |

### `get_passenger() -> LuaEntity | LuaPlayer`

Gets the passenger of this car, spidertron, or cargo pod if any.  This differs over
[LuaEntity::get_driver](runtime:LuaEntity::get_driver) in that for cars, the passenger can't drive
the car.

**Returns:**

- `LuaEntity | LuaPlayer` — `nil` if the vehicle contains no passenger. To check if there's a driver see [LuaEntity::get_driver](runtime:LuaEntit...

### `set_passenger(passenger: LuaEntity | PlayerIdentification | nil)`

Sets the passenger of this car, spidertron, or cargo pod.  This differs from
[LuaEntity::get_driver](runtime:LuaEntity::get_driver) in that the passenger can't drive the car.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `passenger` | `LuaEntity | PlayerIdentification | nil` | no | The new passenger. Writing `nil` ejects the current passenger, if any. |

### `is_connected_to_electric_network() -> boolean`

Returns `true` if this entity produces or consumes electricity and is connected to an electric
network that has at least one entity that can produce power.

**Returns:**

- `boolean` — 

### `get_train_stop_trains() -> array[LuaTrain]`

The trains scheduled to stop at this train stop.

**Returns:**

- `array[LuaTrain]` — 

### `get_stopped_train() -> LuaTrain`

The train currently stopped at this train stop, if any.

**Returns:**

- `LuaTrain` — 

### `clone(position: MapPosition, ?surface: LuaSurface, ?force: ForceID, ?create_build_effect_smoke: boolean) -> LuaEntity`

Clones this entity.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | The destination position |
| `surface` | `LuaSurface` | yes | The destination surface |
| `force` | `ForceID` | yes |  |
| `create_build_effect_smoke` | `boolean` | yes | If false, the building effect smoke will not be shown around the new entity. |

**Returns:**

- `LuaEntity` — The cloned entity or `nil` if this entity can't be cloned/can't be cloned to the given location.

### `get_fluid_count(?fluid: string) -> double`

Get the amount of all or some fluid in this entity.  If information about fluid temperatures is
required, [LuaEntity::fluidbox](runtime:LuaEntity::fluidbox) should be used instead.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid` | `string` | yes | Prototype name of the fluid to count. If not specified, count all fluids. |

**Returns:**

- `double` — 

### `get_fluid_contents() -> dict[string, FluidAmount]`

Get amounts of all fluids in this entity.  If information about fluid temperatures is required,
[LuaEntity::get_fluid](runtime:LuaEntity::get_fluid) or
[LuaEntity::fluidbox](runtime:LuaEntity::fluidbox) should be used instead.

**Returns:**

- `dict[string, FluidAmount]` — The amounts, indexed by fluid names.

### `remove_fluid(name: string, amount: double, ?minimum_temperature: double, ?maximum_temperature: double, ?temperature: double) -> double`

Remove fluid from this entity.  If temperature is given only fluid matching that exact temperature
is removed. If minimum and maximum is given fluid within that range is removed.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | Fluid prototype name. |
| `amount` | `double` | no | Amount to remove |
| `minimum_temperature` | `double` | yes |  |
| `maximum_temperature` | `double` | yes |  |
| `temperature` | `double` | yes |  |

**Returns:**

- `double` — Amount of fluid actually removed.

### `insert_fluid(fluid: Fluid) -> double`

Insert fluid into this entity. Fluidbox is chosen automatically.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid` | `Fluid` | no | Fluid to insert. |

**Returns:**

- `double` — Amount of fluid actually inserted.

### `clear_fluid_inside()`

Remove all fluids from this entity.

### `get_beam_source() -> BeamTarget`

Get the source of this beam.

**Returns:**

- `BeamTarget` — 

### `set_beam_source(source: LuaEntity | MapPosition)`

Set the source of this beam.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source` | `LuaEntity | MapPosition` | no |  |

### `get_beam_target() -> BeamTarget`

Get the target of this beam.

**Returns:**

- `BeamTarget` — 

### `set_beam_target(target: LuaEntity | MapPosition)`

Set the target of this beam.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `target` | `LuaEntity | MapPosition` | no |  |

### `get_radius() -> double`

The radius of this entity. The radius is defined as half the distance between the top left corner
and bottom right corner of the collision box.

**Returns:**

- `double` — 

### `get_health_ratio() -> float`

The health ratio of this entity between 1 and 0 (for full health and no health respectively).

**Returns:**

- `float` — `nil` if this entity doesn't have health.

### `create_build_effect_smoke()`

Creates the same smoke that is created when you place a building by hand.  You can play the building
sound to go with it by using [LuaSurface::play_sound](runtime:LuaSurface::play_sound), eg:
`entity.surface.play_sound{path="entity-build/"..entity.prototype.name, position=entity.position}`

### `release_from_spawner()`

Release the unit from the spawner which spawned it. This allows the spawner to continue spawning
additional units.

### `toggle_equipment_movement_bonus()`

Toggle this entity's equipment movement bonus. Does nothing if the entity does not have an equipment
grid.  This property can also be read and written on the equipment grid of this entity.

### `can_shoot(target: LuaEntity, position: MapPosition) -> boolean`

Whether this character can shoot the given entity or position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `target` | `LuaEntity` | no |  |
| `position` | `MapPosition` | no |  |

**Returns:**

- `boolean` — 

### `start_fading_out()`

Only works if the entity is a speech-bubble, with an "effect" defined in its wrapper_flow_style.
Starts animating the opacity of the speech bubble towards zero, and destroys the entity when it hits
zero.

### `get_upgrade_target() -> (LuaEntityPrototype, LuaQualityPrototype)`

Returns the new entity prototype and its quality.

**Returns:**

- `LuaEntityPrototype` — `nil` if this entity is not marked for upgrade.

- `LuaQualityPrototype` — `nil` if this entity is not marked for upgrade.

### `get_damage_to_be_taken() -> float`

Returns the amount of damage to be taken by this entity.

**Returns:**

- `float` — `nil` if this entity does not have health.

### `deplete()`

Depletes and destroys this resource entity.

### `mine(?inventory: LuaInventory, ?force: boolean, ?raise_destroyed: boolean, ?ignore_minable: boolean) -> boolean`

Mines this entity.  'Standard' operation is to keep calling `LuaEntity.mine` with an inventory until
all items are transferred and the items dealt with.  The result of mining the entity (the item(s) it
produces when mined) will be dropped on the ground if they don't fit into the provided inventory. If
no inventory is provided, the items will be destroyed.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory` | `LuaInventory` | yes | If provided the item(s) will be transferred into this inventory. If provided, this must be an inventory created with ... |
| `force` | `boolean` | yes | If true, when the item(s) don't fit into the given inventory the entity is force mined. If false, the mining operatio... |
| `raise_destroyed` | `boolean` | yes | If true, [script_raised_destroy](runtime:script_raised_destroy) will be raised. Defaults to `true`. |
| `ignore_minable` | `boolean` | yes | If true, the minable state of the entity is ignored. Defaults to `false`. If false, an entity that isn't minable (set... |

**Returns:**

- `boolean` — Whether mining succeeded.

### `spawn_decorations()`

Triggers spawn_decoration actions defined in the entity prototype or does nothing if entity is not
"turret" or "unit-spawner".

### `get_priority_target(index: uint32) -> LuaEntityPrototype`

Get the entity ID at the specified position in the turret's priority list.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the entry to fetch. |

**Returns:**

- `LuaEntityPrototype` — 

### `set_priority_target(index: uint32, ?entity_id: EntityID)`

Set the entity ID name at the specified position in the turret's priority list.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the entry to set. |
| `entity_id` | `EntityID` | yes | The name of the entity prototype, or `nil` to clear the entry. |

### `can_wires_reach(entity: LuaEntity) -> boolean`

Can wires reach between these entities.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no |  |

**Returns:**

- `boolean` — 

### `get_connected_rolling_stock(direction: defines.rail_direction) -> (LuaEntity, defines.rail_direction)`

Gets rolling stock connected to the given end of this stock.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `defines.rail_direction` | no |  |

**Returns:**

- `LuaEntity` — The rolling stock connected at the given end, `nil` if none is connected there.

- `defines.rail_direction` — The rail direction of the connected rolling stock if any.

### `is_registered_for_construction() -> boolean`

Is this entity or tile ghost or item request proxy registered for construction? If false, it means a
construction robot has been dispatched to build the entity, or it is not an entity that can be
constructed.

**Returns:**

- `boolean` — 

### `is_registered_for_deconstruction(force: ForceID) -> boolean`

Is this entity registered for deconstruction with this force? If false, it means a construction
robot has been dispatched to deconstruct it, or it is not marked for deconstruction. The complexity
is effectively O(1) - it depends on the number of objects targeting this entity which should be
small enough.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no | The force construction manager to check. |

**Returns:**

- `boolean` — 

### `is_registered_for_upgrade() -> boolean`

Is this entity registered for upgrade? If false, it means a construction robot has been dispatched
to upgrade it, or it is not marked for upgrade. This is worst-case O(N) complexity where N is the
current number of things in the upgrade queue.

**Returns:**

- `boolean` — 

### `is_registered_for_repair() -> boolean`

Is this entity registered for repair? If false, it means a construction robot has been dispatched to
repair it, or it is not damaged. This is worst-case O(N) complexity where N is the current number of
things in the repair queue.

**Returns:**

- `boolean` — 

### `add_autopilot_destination(position: MapPosition)`

Adds the given position to this spidertron's autopilot's queue of destinations.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | The position the spidertron should move to. |

### `connect_linked_belts(?neighbour: LuaEntity)`

Connects current linked belt with another one.  Neighbours have to be of different type. If given
linked belt is connected to something else it will be disconnected first. If provided neighbour is
connected to something else it will also be disconnected first. Automatically updates neighbour to
be connected back to this one.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `neighbour` | `LuaEntity` | yes | Another linked belt or entity ghost containing linked belt to connect or nil to disconnect |

### `disconnect_linked_belts()`

Disconnects linked belt from its neighbour.

### `get_spider_legs() -> array[LuaEntity]`

Gets legs of given SpiderVehicle.

**Returns:**

- `array[LuaEntity]` — 

### `stop_spider()`

Sets the [speed](runtime:LuaEntity::speed) of the given SpiderVehicle to zero. Notably does not
clear its [autopilot_destination](runtime:LuaEntity::autopilot_destination), which it will continue
moving towards if set.

### `get_wire_connector(wire_connector_id: defines.wire_connector_id, or_create: boolean) -> LuaWireConnector`

Gets a single wire connector of this entity, if any.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `wire_connector_id` | `defines.wire_connector_id` | no | Identifier of a specific connector to get |
| `or_create` | `boolean` | no | If true and connector does not exist, it will be allocated if possible |

**Returns:**

- `LuaWireConnector` — 

### `get_wire_connectors(or_create: boolean) -> dict[defines.wire_connector_id, LuaWireConnector]`

Gets all wire connectors of this entity

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `or_create` | `boolean` | no | If true, it will try to create all connectors possible |

**Returns:**

- `dict[defines.wire_connector_id, LuaWireConnector]` — 

### `get_rail_end(direction: defines.rail_direction) -> LuaRailEnd`

Gets a LuaRailEnd object for specified end of this rail

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `defines.rail_direction` | no |  |

**Returns:**

- `LuaRailEnd` — 

### `get_electric_input_flow_limit(?quality: QualityID) -> double`

The input flow limit for the electric energy source. `nil` if the entity doesn't have an electric
energy source.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_electric_output_flow_limit(?quality: QualityID) -> double`

The output flow limit for the electric energy source. `nil` if the entity doesn't have an electric
energy source.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_beacons() -> array[LuaEntity]`

Returns a table with all beacons affecting this effect receiver. Can only be used when the entity
has an effect receiver (AssemblingMachine, Furnace, Lab, MiningDrills)

**Returns:**

- `array[LuaEntity]` — 

### `get_beacon_effect_receivers() -> array[LuaEntity]`

Returns a table with all entities affected by this beacon

**Returns:**

- `array[LuaEntity]` — 

### `force_finish_ascending()`

Take an ascending cargo pod and safely make it skip all animation and immediately switch surface.

### `force_finish_descending()`

Take a descending cargo pod and safely make it arrive and deposit cargo.

### `create_cargo_pod(?cargo_hatch: LuaCargoHatch) -> LuaEntity`

Creates a cargo pod if possible.  Cargo pod will be created with
[invalid](runtime:defines.cargo_destination.invalid) destination type. Setting
[cargo_pod_destination](runtime:LuaEntity::cargo_pod_destination) will cause it to launch.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `cargo_hatch` | `LuaCargoHatch` | yes | The hatch to create the pod at. A random (available) one is picked if not provided. |

**Returns:**

- `LuaEntity` — 

### `get_cargo_bays() -> array[LuaEntity]`

Gets the cargo bays connected to this cargo landing pad or space platform hub.

**Returns:**

- `array[LuaEntity]` — 

### `inventory_supports_bar(inventory_index: defines.inventory) -> boolean`

The same as [LuaInventory::supports_bar](runtime:LuaInventory::supports_bar) but also works for
ghosts where the inventory is not available through
[LuaControl::get_inventory](runtime:LuaControl::get_inventory).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `defines.inventory` | no |  |

**Returns:**

- `boolean` — 

### `get_inventory_bar(inventory_index: defines.inventory) -> uint32`

The same as [LuaInventory::get_bar](runtime:LuaInventory::get_bar) but also works for ghosts where
the inventory is not available through
[LuaControl::get_inventory](runtime:LuaControl::get_inventory).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `defines.inventory` | no |  |

**Returns:**

- `uint32` — 

### `set_inventory_bar(inventory_index: defines.inventory, ?bar: uint32)`

The same as [LuaInventory::set_bar](runtime:LuaInventory::set_bar) but also works for ghosts where
the inventory is not available through
[LuaControl::get_inventory](runtime:LuaControl::get_inventory).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `defines.inventory` | no |  |
| `bar` | `uint32` | yes | The new limit. Omitting this parameter or passing `nil` will clear the limit. |

### `inventory_supports_filters(inventory_index: defines.inventory) -> boolean`

The same as [LuaInventory::supports_filters](runtime:LuaInventory::supports_filters) but also works
for ghosts where the inventory is not available through
[LuaControl::get_inventory](runtime:LuaControl::get_inventory).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `defines.inventory` | no |  |

**Returns:**

- `boolean` — 

### `is_inventory_filtered(inventory_index: defines.inventory) -> boolean`

The same as [LuaInventory::is_filtered](runtime:LuaInventory::is_filtered) but also works for ghosts
where the inventory is not available through
[LuaControl::get_inventory](runtime:LuaControl::get_inventory).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `defines.inventory` | no |  |

**Returns:**

- `boolean` — 

### `can_set_inventory_filter(inventory_index: defines.inventory, index: uint32, filter: ItemFilter) -> boolean`

The same as [LuaInventory::can_set_filter](runtime:LuaInventory::can_set_filter) but also works for
ghosts where the inventory is not available through
[LuaControl::get_inventory](runtime:LuaControl::get_inventory).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `defines.inventory` | no |  |
| `index` | `uint32` | no | The item stack index |
| `filter` | `ItemFilter` | no | The item filter |

**Returns:**

- `boolean` — 

### `get_inventory_filter(inventory_index: defines.inventory, index: uint32) -> ItemFilter`

The same as [LuaInventory::get_filter](runtime:LuaInventory::get_filter) but also works for ghosts
where the inventory is not available through
[LuaControl::get_inventory](runtime:LuaControl::get_inventory).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `defines.inventory` | no |  |
| `index` | `uint32` | no | The item stack index |

**Returns:**

- `ItemFilter` — The current filter or `nil` if none.

### `set_inventory_filter(inventory_index: defines.inventory, index: uint32, filter: ItemFilter | nil) -> boolean`

The same as [LuaInventory::set_filter](runtime:LuaInventory::set_filter) but also works for ghosts
where the inventory is not available through
[LuaControl::get_inventory](runtime:LuaControl::get_inventory).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `defines.inventory` | no |  |
| `index` | `uint32` | no | The item stack index. |
| `filter` | `ItemFilter | nil` | no | The new filter. `nil` erases any existing filter. |

**Returns:**

- `boolean` — If the filter was allowed to be set.

### `register_tree(tree: LuaEntity) -> boolean`

Registers the given tree in this agricultural tower.  If the tree is not within range of the tower
it will not be registered.  If the tree is already registered with a tower it will not be
registered.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tree` | `LuaEntity` | no |  |

**Returns:**

- `boolean` — If the tree was registered.

### `get_movement() -> Vector`

Gets the combined movement vector (direction and speed) of this combat robot or asteroid. The entity
moves by this vector each tick.  Note that for combat robots this does not include the constant
drift in the direction they are facing.

**Returns:**

- `Vector` — 

### `set_movement(direction: Vector, speed: double)`

Sets the movement direction and movement speed for this combat robot or asteroid.  Note that for
combat robots this does not affect the constant drift in the direction they are facing.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `Vector` | no | This normalized form of this vector is used for the movement direction. |
| `speed` | `double` | no | Speed in tiles per tick. Cannot be less than 0. |

### `get_fluid(index: uint32) -> Fluid`

Gets fluid of the index-th fluid storage. This includes fluidbox and non-fluidbox fluid storages
like fluid wagon contents. Refer to [LuaEntity::fluids_count](runtime:LuaEntity::fluids_count) for
more information on available storages.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | Fluid storage index. Valid values are from 1 up to [LuaEntity::fluids_count](runtime:LuaEntity::fluids_count). |

**Returns:**

- `Fluid` — Fluid in this storage. `nil` if fluid storage is empty.

### `set_fluid(index: uint32, ?fluid: Fluid) -> Fluid`

Sets fluid to the index-th fluid storage. This includes fluidbox and non-fluidbox fluid storages
like fluid wagon contents. Refer to [LuaEntity::fluids_count](runtime:LuaEntity::fluids_count) for
more information on available storages.  Fluid storages that are part of fluidboxes (also available
through [LuaFluidBox](runtime:LuaFluidBox)) may reject some fluids if they do not match filters or
are above the fluidbox volume. To verify how much fluid was set a return value can be used which is
the same as value that would be returned by [LuaEntity::get_fluid](runtime:LuaEntity::get_fluid).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | Fluid storage index. Valid values are from 1 up to [LuaEntity::fluids_count](runtime:LuaEntity::fluids_count). |
| `fluid` | `Fluid` | yes | Fluid to set. Fluid storage will be cleared if this is not provided. |

**Returns:**

- `Fluid` — Fluid in this storage after it was set. `nil` if fluid storage is empty.

### `get_logistic_sections() -> LuaLogisticSections`

Gives logistic sections of this entity if it uses logistic sections.

**Returns:**

- `LuaLogisticSections` — 

### `set_inventory_size_override(inventory_index: defines.inventory, size_override: uint16 | nil, ?overflow: LuaInventory)`

Sets inventory size override. When set, supported entity will ignore inventory size from prototype
and will instead keep inventory size equal to the override. Setting `nil` will restore default
inventory size.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `defines.inventory` | no |  |
| `size_override` | `uint16 | nil` | no |  |
| `overflow` | `LuaInventory` | yes | Items that would be deleted due to change of inventory size will be transferred to this inventory. Must be a script i... |

### `get_inventory_size_override(inventory_index: defines.inventory) -> uint16`

Gets the inventory size override of the selected inventory if size override was set using
[set_inventory_size_override](runtime:LuaEntity::set_inventory_size_override).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `defines.inventory` | no |  |

**Returns:**

- `uint16` — 

### `get_fluid_source_tile() -> TilePosition`

Gives TilePosition of a tile which this offshore pump uses to check what fluid should be produced.

**Returns:**

- `TilePosition` — 

### `get_fluid_source_fluid() -> string`

Checks what is expected fluid to be produced from the offshore pump's source tile. It accounts for
visible tile, hidden tile and double hidden tile. It ignores currently set fluid box filter.

**Returns:**

- `string` — Name of fluid that should be produced by this offshore pump based on existing tiles.
