# LuaEntityPrototype

Prototype of an entity.

## Attributes

### `infinite_resource` — `boolean` (read-only) *(optional)*

Whether this resource is infinite.

### `minimum_resource_amount` — `uint32` (read-only) *(optional)*

Minimum amount of this resource.

### `normal_resource_amount` — `uint32` (read-only) *(optional)*

The normal amount for this resource.

### `infinite_depletion_resource_amount` — `uint32` (read-only) *(optional)*

Every time this infinite resource 'ticks' down, it is reduced by this amount. Meaningless if this
isn't an infinite resource.

### `resource_category` — `string` (read-only) *(optional)*

Name of the category of this resource.  During data stage, this property is named "category".

### `mineable_properties` — `MineableProperties` (read-only)

Whether this entity is minable and what can be obtained by mining it.

### `items_to_place_this` — `array[ItemToPlace]` (read-only) *(optional)*

Items that when placed will produce this entity, if any. Construction bots will choose the first
item in the list to build this entity.

### `collision_box` — `BoundingBox` (read-only)

The bounding box used for collision checking.

### `secondary_collision_box` — `BoundingBox` (read-only) *(optional)*

The secondary bounding box used for collision checking, if any. This is only used in rails and rail
remnants.

### `map_generator_bounding_box` — `BoundingBox` (read-only)

The bounding box used for map generator collision checking.

### `selection_box` — `BoundingBox` (read-only)

The bounding box used for drawing selection.

### `drawing_box_vertical_extension` — `double` (read-only)

Extra vertical space needed to see the whole entity in GUIs. This is used to calculate the correct
zoom and positioning in the entity info gui, for example in the entity tooltip.

### `sticker_box` — `BoundingBox` (read-only)

The bounding box used to attach sticker type entities.

### `collision_mask` — `CollisionMask` (read-only)

The collision masks this entity uses

### `trigger_target_mask` — `dict[string, boolean]` (read-only)

The trigger target mask for this entity prototype type.  The values in the dictionary are
meaningless and exists just to allow the dictionary type for easy lookup.

### `healing_per_tick` — `float` (read-only) *(optional)*

Amount this entity can heal per tick, if any.

### `emissions_per_second` — `dict[string, double]` (read-only)

A table of pollution emissions per second the entity will create, grouped by the name of the
pollution type.

### `corpses` — `dict[string, LuaEntityPrototype]` (read-only) *(optional)*

Corpses used when this entity is destroyed. It is a dictionary indexed by the corpse's prototype
name.

### `selectable_in_game` — `boolean` (read-only)

Is this entity selectable?

### `selection_priority` — `uint32` (read-only)

The selection priority of this entity - a value between `0` and `255`.

### `weight` — `double` (read-only) *(optional)*

The weight of this vehicle prototype.

### `resistances` — `dict[string, Resistance]` (read-only) *(optional)*

List of resistances towards each damage type. It is a dictionary indexed by damage type names (see
`data/base/prototypes/damage-type.lua`).

### `fast_replaceable_group` — `string` (read-only) *(optional)*

The group of mutually fast-replaceable entities, if any.

### `next_upgrade` — `LuaEntityPrototype` (read-only) *(optional)*

The next upgrade for this entity, if any.

### `icons_positioning` — `array[IconSequencePositioning]` (read-only) *(optional)*

The icon positioning for inventories of this entity, if defined.

### `icon_draw_specification` — `IconDrawSpecification` (read-only)

The definition of where and how the alt-mode icons of this entity should be drawn.

### `loot` — `array[Loot]` (read-only) *(optional)*

Loot that will be dropped when this entity is killed, if any.

### `repair_speed_modifier` — `float` (read-only) *(optional)*

Repair-speed modifier for this entity, if any. Actual repair speed will be `tool_repair_speed *
entity_repair_speed_modifier`.

### `turret_range` — `uint32` (read-only) *(optional)*

The range of this turret.

### `autoplace_specification` — `AutoplaceSpecification` (read-only) *(optional)*

Autoplace specification for this entity prototype, if any.

### `belt_speed` — `double` (read-only) *(optional)*

The speed of this transport belt.

### `result_units` — `array[UnitSpawnDefinition]` (read-only) *(optional)*

The result units and spawn points with weight and evolution factor for a biter spawner entity.

### `attack_result` — `array[TriggerItem]` (read-only) *(optional)*

The attack result of this entity, if any.

### `final_attack_result` — `array[TriggerItem]` (read-only) *(optional)*

The final attack result for this projectile.

### `attack_parameters` — `AttackParameters` (read-only) *(optional)*

The attack parameters for this entity, if any.

### `revenge_attack_parameters` — `AttackParameters` (read-only) *(optional)*

The revenge attack parameters for this entity, if any. These attack parameters are used in addition
to [LuaEntityPrototype::attack_parameters](runtime:LuaEntityPrototype::attack_parameters) if the
entity is attacking a target that has previously dealt damage to the entity.

### `spawn_cooldown` — `{max: double, min: double}` (read-only) *(optional)*

The spawning cooldown for this enemy spawner prototype.

### `mining_drill_radius` — `double` (read-only) *(optional)*

The mining radius of this mining drill prototype.

### `quality_affects_mining_radius` — `boolean` (read-only) *(optional)*

### `mining_speed` — `double` (read-only) *(optional)*

The mining speed of this mining drill/character prototype.

### `resource_drain_rate_percent` — `uint8` (read-only) *(optional)*

The resource drain rate percent of this mining drill prototype.

### `uses_force_mining_productivity_bonus` — `boolean` (read-only) *(optional)*

If this drill uses force productivity bonus

### `logistic_mode` — `'requester' | 'active-provider' | 'passive-provider' | 'buffer' | 'storage' | 'none'` (read-only) *(optional)*

The logistic mode of this logistic container.

### `max_underground_distance` — `uint8` (read-only) *(optional)*

The max underground distance for underground belts and underground pipes.

### `flags` — `EntityPrototypeFlags` (read-only)

The flags for this entity prototype.

### `remains_when_mined` — `array[LuaEntityPrototype]` (read-only)

The remains left behind when this entity is mined.

### `additional_pastable_entities` — `array[LuaEntityPrototype]` (read-only)

Entities this entity can be pasted onto in addition to the normal allowed ones.

### `allow_copy_paste` — `boolean` (read-only)

When false copy-paste is not allowed for this entity.

### `shooting_cursor_size` — `float` (read-only)

The cursor size used when shooting at this entity.

### `created_smoke` — `{initial_height: float, max_radius: float, offset_deviation: BoundingBox, offsets: array[Vector], smoke_name: string, speed: Vector, speed_from_center: float, speed_from_center_deviation: float, speed_multiplier: float, speed_multiplier_deviation: float, starting_frame: float, starting_frame_deviation: float}` (read-only) *(optional)*

The smoke trigger run when this entity is built, if any.

### `created_effect` — `array[TriggerItem]` (read-only) *(optional)*

The trigger to run when this entity is created, if any.

### `update_effects` — `array[TriggerEffectWithCooldown]` (read-only) *(optional)*

The trigger effects to run every tick when on cooldown.

### `update_effects_while_enraged` — `array[TriggerEffectWithCooldown]` (read-only) *(optional)*

The trigger effects to run every tick when on cooldown while the owning
[LuaSegmentedUnit](runtime:LuaSegmentedUnit) is enraged.

### `map_color` — `Color` (read-only) *(optional)*

The map color used when charting this entity if a friendly or enemy color isn't defined, if any.

### `friendly_map_color` — `Color` (read-only)

The friendly map color used when charting this entity.

### `enemy_map_color` — `Color` (read-only)

The enemy map color used when charting this entity.

### `build_base_evolution_requirement` — `double` (read-only)

The evolution requirement to build this entity as a base when expanding enemy bases.

### `instruments` — `array[ProgrammableSpeakerInstrument]` (read-only) *(optional)*

The instruments for this programmable speaker.

### `max_polyphony` — `uint32` (read-only) *(optional)*

The maximum polyphony for this programmable speaker.

### `module_inventory_size` — `uint32` (read-only) *(optional)*

The module inventory size. `nil` if this entity doesn't support modules.

### `quality_affects_module_slots` — `boolean` (read-only) *(optional)*

### `inventory_type` — `'normal' | 'with_bar' | 'with_filters' | 'with_filters_and_bar' | 'with_weight_limit' | 'with_custom_stack_size'` (read-only) *(optional)*

The inventory type this container or linked container uses.

### `inventory_weight_limit` — `Weight` (read-only) *(optional)*

Weight limit of the inventory if inventory_type is `"with_weight_limit"`.

### `inventory_properties` — `InventoryWithCustomStackSizeSpecification` (read-only) *(optional)*

Properties of custom inventory. Only provided if inventory_type is `"with_custom_stack_size"`.

### `ingredient_count` — `uint32` (read-only) *(optional)*

The max number of ingredients this crafting machine prototype supports.

### `max_item_product_count` — `uint32` (read-only) *(optional)*

The max number of item products this crafting machine prototype supports.

### `crafting_categories` — `dict[string, True]` (read-only) *(optional)*

The [crafting categories](runtime:LuaRecipeCategoryPrototype) this entity prototype supports.  The
value in the dictionary is meaningless and exists just to allow for easy lookup.

### `resource_categories` — `dict[string, True]` (read-only) *(optional)*

The [resource categories](runtime:LuaResourceCategoryPrototype) this character or mining drill
supports.  The value in the dictionary is meaningless and exists just to allow for easy lookup.

### `energy_usage` — `double` (read-only) *(optional)*

The direct energy usage of this entity, if any.

### `effectivity` — `double` (read-only) *(optional)*

The effectivity of this car prototype, generator prototype.

### `consumption` — `double` (read-only) *(optional)*

The energy consumption of this car prototype.

### `friction_force` — `double` (read-only) *(optional)*

The friction of this vehicle prototype.

### `braking_force` — `double` (read-only) *(optional)*

The braking force of this vehicle prototype.

### `air_resistance` — `double` (read-only) *(optional)*

The air resistance of this rolling stock prototype.

### `tank_driving` — `boolean` (read-only) *(optional)*

If this car prototype uses tank controls to drive.

### `rotation_speed` — `double` (read-only) *(optional)*

The rotation speed of this car prototype.

### `rotation_snap_angle` — `double` (read-only) *(optional)*

The rotation snap angle of this car prototype.

### `turret_rotation_speed` — `float` (read-only) *(optional)*

The turret rotation speed of this car prototype.

### `guns` — `dict[string, LuaItemPrototype]` (read-only) *(optional)*

A mapping of the gun name to the gun prototype this prototype uses. `nil` if this entity prototype
doesn't use guns.

### `indexed_guns` — `array[LuaItemPrototype]` (read-only) *(optional)*

A vector of the gun prototypes of this car, spider vehicle, artillery wagon, or turret.

### `speed` — `double` (read-only) *(optional)*

The default speed of this flying robot, rolling stock or unit. For rolling stocks, this is their
`max_speed`.

### `speed_multiplier_when_out_of_energy` — `float` (read-only) *(optional)*

The speed multiplier when this flying robot is out of energy.

### `max_payload_size` — `uint32` (read-only) *(optional)*

The cargo carrying capacity of this logistics or construction robot.

### `max_payload_size_after_bonus` — `uint32` (read-only) *(optional)*

The maximum possible cargo carrying capacity of this logistics or construction robot. Bonuses from
technologies/forces can't increase the carrying capacity beyond this number.

### `draw_cargo` — `boolean` (read-only) *(optional)*

Whether this logistics or construction robot renders its cargo when flying.

### `energy_per_move` — `double` (read-only) *(optional)*

The energy consumed per tile moved for this flying robot.

### `energy_per_tick` — `double` (read-only) *(optional)*

The energy consumed per tick for this flying robot.

### `min_to_charge` — `float` (read-only) *(optional)*

The minimum energy for this flying robot before it tries to recharge.

### `max_to_charge` — `float` (read-only) *(optional)*

The maximum energy for this flying robot above which it won't try to recharge when stationing.

### `burner_prototype` — `LuaBurnerPrototype` (read-only) *(optional)*

The burner energy source prototype this entity uses, if any.

### `electric_energy_source_prototype` — `LuaElectricEnergySourcePrototype` (read-only) *(optional)*

The electric energy source prototype this entity uses, if any.

### `heat_energy_source_prototype` — `LuaHeatEnergySourcePrototype` (read-only) *(optional)*

The heat energy source prototype this entity uses, if any.

### `fluid_energy_source_prototype` — `LuaFluidEnergySourcePrototype` (read-only) *(optional)*

The fluid energy source prototype this entity uses, if any.

### `void_energy_source_prototype` — `LuaVoidEnergySourcePrototype` (read-only) *(optional)*

The void energy source prototype this entity uses, if any.

### `heat_buffer_prototype` — `LuaHeatBufferPrototype` (read-only) *(optional)*

The heat buffer prototype this entity uses, if any.

### `building_grid_bit_shift` — `uint32` (read-only)

The log2 of [grid size](prototype:EntityPrototype::build_grid_size) of the building.

### `fluid_usage_per_tick` — `double` (read-only) *(optional)*

The fluid usage of this generator prototype. This property is deprecated in favor of
[LuaEntityPrototype::get_fluid_usage_per_tick](runtime:LuaEntityPrototype::get_fluid_usage_per_tick)
and should not be used.

### `maximum_temperature` — `double` (read-only) *(optional)*

The maximum fluid temperature of this generator prototype.

### `burns_fluid` — `boolean` (read-only) *(optional)*

Whether this generator prototype burns fluid.

### `scale_fluid_usage` — `boolean` (read-only) *(optional)*

Whether this generator prototype scales fluid usage.

### `destroy_non_fuel_fluid` — `boolean` (read-only) *(optional)*

Whether this generator prototype destroys non-fuel fluids.

### `max_power_output` — `double` (read-only) *(optional)*

The default maximum power output of this generator prototype. This property is deprecated in favor
of [LuaEntityPrototype::get_max_power_output](runtime:LuaEntityPrototype::get_max_power_output) and
should not be used.

### `target_temperature` — `float` (read-only) *(optional)*

The target temperature of this boiler or fusion reactor prototype. If `nil` on a fusion reactor, the
target temperature is the default temperature of the output fluid.

### `boiler_mode` — `'heat-fluid-inside' | 'output-to-separate-pipe'` (read-only) *(optional)*

The boiler operation mode of this boiler prototype.

### `fluid_capacity` — `double` (read-only)

The fluid capacity of this entity or 0 if this entity doesn't support fluids.  Crafting machines
will report 0 due to their fluid capacity being whatever a given recipe needs.

### `pumping_speed` — `double` (read-only) *(optional)*

The pumping speed of this offshore pump or normal pump. This property is deprecated in favor of
[LuaEntityPrototype::get_pumping_speed](runtime:LuaEntityPrototype::get_pumping_speed) and should
not be used.

### `valve_mode` — `ValveMode` (read-only) *(optional)*

The mode of operation of this valve.

### `valve_threshold` — `float` (read-only) *(optional)*

The default threshold of this valve.

### `bulk` — `boolean` (read-only) *(optional)*

Whether this inserter is a bulk-type.

### `uses_inserter_stack_size_bonus` — `boolean` (read-only) *(optional)*

### `fluid_source_offset` — `Vector` (read-only) *(optional)*

### `flow_scaling` — `boolean` (read-only) *(optional)*

### `allow_custom_vectors` — `boolean` (read-only) *(optional)*

Whether this inserter allows custom pickup and drop vectors.

### `allow_burner_leech` — `boolean` (read-only) *(optional)*

Whether this inserter allows burner leeching.

### `inserter_pickup_position` — `Vector` (read-only) *(optional)*

The pickup position for this inserter.

### `inserter_drop_position` — `Vector` (read-only) *(optional)*

The drop position for this inserter.

### `inserter_chases_belt_items` — `boolean` (read-only) *(optional)*

True if this inserter chases items on belts for pickup.

### `inserter_max_belt_stack_size` — `uint8` (read-only) *(optional)*

The max belt stack size for this inserter.

### `loader_max_belt_stack_size` — `uint8` (read-only) *(optional)*

The max belt stack size for this loader.

### `loader_adjustable_belt_stack_size` — `boolean` (read-only) *(optional)*

True if this loader supports a runtime-adjustable belt stack size.

### `loader_wait_for_full_stack` — `boolean` (read-only) *(optional)*

True if this loader will not drop items for which total amount is less than a full belt stack.

### `loader_respect_insert_limits` — `boolean` (read-only) *(optional)*

### `count_as_rock_for_filtered_deconstruction` — `boolean` (read-only) *(optional)*

If this simple-entity is counted as a rock for the deconstruction planner "trees and rocks only"
filter.

### `filter_count` — `uint32` (read-only) *(optional)*

The filter count of this inserter, loader, mining drill or logistic chest. For logistic containers,
`nil` means no limit.

### `time_to_live` — `uint32` (read-only)

The time to live for this prototype or `0` if prototype doesn't have time_to_live or
time_before_removed.

### `distribution_effectivity` — `double` (read-only) *(optional)*

The distribution effectivity for this beacon prototype.

### `distribution_effectivity_bonus_per_quality_level` — `double` (read-only) *(optional)*

The distribution effectivity bonus per quality level for this beacon prototype.

### `profile` — `array[double]` (read-only) *(optional)*

The beacon profile: extra multiplier applied to the effects received from beacon by the effect
receiver based on amount of beacons that reach that effect receiver

### `beacon_counter` — `'total' | 'same_type'` (read-only) *(optional)*

The beacon counter used by effect receiver when deciding which sample to take from beacon profile.

### `explosion_beam` — `double` (read-only) *(optional)*

Whether this explosion has a beam.

### `explosion_rotate` — `double` (read-only) *(optional)*

Whether this explosion rotates.

### `tree_color_count` — `uint8` (read-only) *(optional)*

If it is a tree, return the number of colors it supports.

### `alert_when_damaged` — `boolean` (read-only) *(optional)*

Whether this entity raises an alert when damaged.

### `alert_when_attacking` — `boolean` (read-only) *(optional)*

Whether this turret raises an alert when attacking

### `color` — `Color` (read-only) *(optional)*

The color of the prototype, if any.

### `collision_mask_collides_with_self` — `boolean` (read-only)

Does this prototype collision mask collide with itself?

### `collision_mask_collides_with_tiles_only` — `boolean` (read-only)

Does this prototype collision mask collide with tiles only?

### `collision_mask_considers_tile_transitions` — `boolean` (read-only)

Does this prototype collision mask consider tile transitions?

### `allowed_effects` — `dict[string, boolean]` (read-only) *(optional)*

The allowed module effects for this entity, if any.

### `allowed_module_categories` — `dict[string, True]` (read-only) *(optional)*

The allowed module categories for this entity, if any.

### `rocket_parts_required` — `uint32` (read-only) *(optional)*

The rocket parts required for this rocket silo prototype.

### `rocket_rising_delay` — `uint8` (read-only) *(optional)*

The rocket rising delay for this rocket silo prototype.

### `launch_wait_time` — `uint8` (read-only) *(optional)*

The rocket launch delay for this rocket silo prototype.

### `light_blinking_speed` — `double` (read-only) *(optional)*

The light blinking speed for this rocket silo prototype.

### `door_opening_speed` — `double` (read-only) *(optional)*

The door opening speed for this rocket silo prototype.

### `launch_to_space_platforms` — `boolean` (read-only) *(optional)*

### `rising_speed` — `double` (read-only) *(optional)*

The rising speed for this rocket silo rocket prototype.

### `engine_starting_speed` — `double` (read-only) *(optional)*

The engine starting speed for this rocket silo rocket prototype.

### `flying_speed` — `double` (read-only) *(optional)*

The flying speed for this rocket silo rocket prototype.

### `flying_acceleration` — `double` (read-only) *(optional)*

The flying acceleration for this rocket silo rocket prototype.

### `fixed_recipe` — `string` (read-only) *(optional)*

The fixed recipe name for this assembling machine prototype, if any.

### `construction_radius` — `double` (read-only) *(optional)*

The construction radius for this roboport prototype.

### `logistic_radius` — `double` (read-only) *(optional)*

The logistic radius for this roboport prototype.

### `energy_per_hit_point` — `double` (read-only) *(optional)*

The energy used per hit point taken for this vehicle during collisions.

### `create_ghost_on_death` — `boolean` (read-only)

If this prototype will attempt to create a ghost of itself on death.  If this is false then a ghost
will never be made, if it's true a ghost may be made.

### `ammo_category` — `string` (read-only) *(optional)*

Name of the ammo category of this land mine.

### `timeout` — `uint32` (read-only) *(optional)*

The time it takes this land mine to arm.

### `trigger_collision_mask` — `CollisionMask` (read-only) *(optional)*

The collision mask entities must collide with to make this landmine blow up.

### `fluidbox_prototypes` — `array[LuaFluidBoxPrototype]` (read-only)

The fluidbox prototypes for this entity.

### `neighbour_bonus` — `double` (read-only) *(optional)*

### `container_distance` — `double` (read-only) *(optional)*

### `belt_distance` — `double` (read-only) *(optional)*

### `belt_length` — `double` (read-only) *(optional)*

### `per_lane_filters` — `boolean` (read-only) *(optional)*

### `is_building` — `boolean` (read-only)

### `automated_ammo_count` — `uint32` (read-only) *(optional)*

The amount of ammo that inserters automatically insert into this ammo turret, artillery turret or
artillery wagon.

### `max_speed` — `double` (read-only) *(optional)*

The max speed of this projectile or flying robot prototype.

### `darkness_for_all_lamps_on` — `float` (read-only) *(optional)*

Value between 0 and 1 darkness where all lamps of this lamp prototype are on.

### `darkness_for_all_lamps_off` — `float` (read-only) *(optional)*

Value between 0 and 1 darkness where all lamps of this lamp prototype are off.

### `always_on` — `boolean` (read-only) *(optional)*

Whether the lamp is always on (except when out of power or turned off by the circuit network).

### `min_darkness_to_spawn` — `float` (read-only) *(optional)*

The minimum darkness at which this unit spawner can spawn entities.

### `max_darkness_to_spawn` — `float` (read-only) *(optional)*

The maximum darkness at which this unit spawner can spawn entities.

### `call_for_help_radius` — `double` (read-only) *(optional)*

### `max_count_of_owned_units` — `double` (read-only) *(optional)*

Count of enemies this spawner can sustain.

### `max_count_of_owned_defensive_units` — `double` (read-only) *(optional)*

Count of defensive enemies this spawner can sustain.

### `max_friends_around_to_spawn` — `double` (read-only) *(optional)*

How many friendly units are required within the spawning_radius of this spawner for it to stop
producing more units.

### `max_defensive_friends_around_to_spawn` — `double` (read-only) *(optional)*

How many defensive friendly units are required within the spawning_radius of this spawner for it to
stop producing more units.

### `spawning_radius` — `double` (read-only) *(optional)*

How far from the spawner can the units be spawned.

### `spawning_spacing` — `double` (read-only) *(optional)*

What spaces should be between the spawned units.

### `radius` — `double` (read-only)

The radius of this entity prototype. The radius is defined as half the distance between the top left
corner and bottom right corner of the collision box.

### `cliff_explosive_prototype` — `string` (read-only) *(optional)*

The item prototype name used to destroy this cliff.

### `rocket_entity_prototype` — `LuaEntityPrototype` (read-only) *(optional)*

The rocket entity prototype associated with this rocket silo prototype.

### `has_belt_immunity` — `boolean` (read-only) *(optional)*

Whether this unit, car, or character prototype has belt immunity.

### `vision_distance` — `double` (read-only) *(optional)*

The vision distance of this unit prototype.

### `absorptions_to_join_attack` — `dict[string, float]` (read-only) *(optional)*

A table of pollutions amounts that has to be absorbed by the unit's spawner before the unit will
leave the spawner and attack the source of the pollution, indexed by the name of each absorbed
pollution type.

### `min_pursue_time` — `uint32` (read-only) *(optional)*

The minimum pursue time of this unit prototype.

### `max_pursue_distance` — `double` (read-only) *(optional)*

The maximum pursue distance of this unit prototype.

### `radar_range` — `uint32` (read-only) *(optional)*

The radar range of this unit prototype.

### `move_while_shooting` — `boolean` (read-only) *(optional)*

Whether this unit prototype can move while shooting.

### `can_open_gates` — `boolean` (read-only) *(optional)*

Whether this unit prototype can open gates.

### `affected_by_tiles` — `boolean` (read-only) *(optional)*

Whether this unit prototype is affected by tile walking speed modifiers.

### `distraction_cooldown` — `uint32` (read-only) *(optional)*

The distraction cooldown of this unit prototype.

### `spawning_time_modifier` — `double` (read-only) *(optional)*

The spawning time modifier of this unit prototype.

### `alert_icon_shift` — `Vector` (read-only)

The alert icon shift of this entity prototype.

### `alert_icon_scale` — `float` (read-only)

The alert icon scale of this entity prototype.

### `lab_inputs` — `array[string]` (read-only) *(optional)*

The item prototype names that are the inputs of this lab prototype.

### `science_pack_drain_rate_percent` — `uint8` (read-only)

How much science pack durability is required to research one science point.

### `effect_receiver` — `EffectReceiver` (read-only) *(optional)*

Effect receiver prototype of this crafting machine, lab, or mining drill.

### `allow_access_to_all_forces` — `boolean` (read-only) *(optional)*

Whether this market allows access to all forces or just friendly ones.

### `supports_direction` — `boolean` (read-only)

Whether this entity prototype could possibly ever be rotated.

### `terrain_friction_modifier` — `float` (read-only) *(optional)*

The terrain friction modifier for this vehicle.

### `allow_passengers` — `boolean` (read-only) *(optional)*

Whether this vehicle allows passengers.

### `grid_prototype` — `LuaEquipmentGridPrototype` (read-only) *(optional)*

The equipment grid prototype for this entity, if any.

### `remove_decoratives` — `'automatic' | 'true' | 'false'` (read-only)

Whether this entity should remove decoratives that collide with it when this entity is built.

### `related_underground_belt` — `LuaEntityPrototype` (read-only) *(optional)*

### `inserter_stack_size_bonus` — `uint32` (read-only) *(optional)*

The built-in stack size bonus of this inserter prototype.

### `protected_from_tile_building` — `boolean` (read-only)

True if this entity prototype should be included during tile collision checks with [LuaTilePrototype
::check_collision_with_entities](runtime:LuaTilePrototype::check_collision_with_entities) enabled.

### `is_entity_with_owner` — `boolean` (read-only)

True if this is entity-with-owner

### `is_military_target` — `boolean` (read-only) *(optional)*

True if this entity-with-owner is military target

### `allow_run_time_change_of_is_military_target` — `boolean` (read-only) *(optional)*

True if this entity-with-owner's is_military_target can be changed run-time (on the entity, not on
the prototype itself)

### `logistic_parameters` — `{charge_approach_distance: float, charging_distance: float, charging_energy: double, charging_station_count: uint32, charging_station_shift: Vector, charging_threshold_distance: float, construction_radius: float, logistic_radius: float, logistics_connection_distance: float, robot_limit: uint32, robot_vertical_acceleration: float, robots_shrink_when_entering_and_exiting: boolean, spawn_and_station_height: float, spawn_and_station_shadow_height_offset: float, stationing_offset: Vector, stationing_render_layer_swap_height: float}` (read-only) *(optional)*

The logistic parameters for this roboport.

### `height` — `double` (read-only) *(optional)*

The height of this spider vehicle prototype.

### `torso_rotation_speed` — `double` (read-only) *(optional)*

The torso rotation speed of this spider vehicle prototype.

### `torso_bob_speed` — `double` (read-only) *(optional)*

The torso bob speed of this spider vehicle prototype.

### `automatic_weapon_cycling` — `boolean` (read-only) *(optional)*

Whether this spider vehicle prototype automatically cycles weapons.

### `chain_shooting_cooldown_modifier` — `double` (read-only) *(optional)*

The chain shooting cooldown modifier of this spider vehicle prototype.

### `spider_engine` — `SpiderEngineSpecification` (read-only) *(optional)*

### `chunk_exploration_radius` — `double` (read-only) *(optional)*

The chunk exploration radius of this vehicle prototype.

### `animation_speed_coefficient` — `double` (read-only) *(optional)*

The animation speed coefficient of this belt connectable prototype.

### `manual_range_modifier` — `double` (read-only) *(optional)*

The manual range modifier for this artillery turret or wagon prototype.

### `dying_speed` — `float` (read-only) *(optional)*

The dying time of this corpse prototype.

### `active_energy_usage` — `double` (read-only) *(optional)*

The active energy usage of this rocket silo or combinator prototype.

### `lamp_energy_usage` — `double` (read-only) *(optional)*

The lamp energy usage of this rocket silo prototype.

### `crane_energy_usage` — `double` (read-only) *(optional)*

The crane energy usage of this agricultural tower prototype.

### `use_exact_mode` — `boolean` (read-only) *(optional)*

Whether this logistic container prototype uses exact mode

### `tile_width` — `uint32` (read-only)

Specifies the tiling size of the entity, is used to decide, if the center should be in the center of
the tile (odd tile size dimension) or on the tile border (even tile size dimension)

### `tile_height` — `uint32` (read-only)

Specifies the tiling size of the entity, is used to decide, if the center should be in the center of
the tile (odd tile size dimension) or on the tile border (even tile size dimension)

### `vertical_selection_shift` — `double` (read-only) *(optional)*

Vertical selection shift used by rolling stocks. It affects selection box vertical position but is
also used to shift rolling stock graphics along the rails to fine tune train's look.

### `spawn_decoration` — `array[TriggerEffectItem]` (read-only) *(optional)*

### `spawn_decorations_on_expansion` — `boolean` (read-only) *(optional)*

### `connection_distance` — `double` (read-only) *(optional)*

### `joint_distance` — `double` (read-only) *(optional)*

### `radius_visualisation_specification` — `RadiusVisualisationSpecification` (read-only) *(optional)*

### `growth_ticks` — `uint32` (read-only) *(optional)*

### `harvest_emissions` — `dict[string, double]` (read-only) *(optional)*

A table of pollutants that this plant will release when it is harvested.

### `agricultural_tower_radius` — `double` (read-only) *(optional)*

### `growth_area_radius` — `double` (read-only) *(optional)*

### `growth_grid_tile_size` — `uint32` (read-only) *(optional)*

### `vector_to_place_result` — `Vector` (read-only) *(optional)*

### `surface_conditions` — `array[SurfaceCondition]` (read-only) *(optional)*

The surface conditions required to build this entity.

### `heating_energy` — `double` (read-only)

The energy required to keep this entity from freezing. Zero energy means it doesn't freeze.

### `auto_setup_collision_box` — `boolean` (read-only)

### `factoriopedia_alternative` — `LuaEntityPrototype` (read-only) *(optional)*

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### `rewire_neighbours_when_destroying` — `boolean` (read-only)

### `solar_panel_performance_at_day` — `double` (read-only)

### `solar_panel_performance_at_night` — `double` (read-only)

### `solar_panel_solar_coefficient_property` — `LuaSurfacePropertyPrototype` (read-only)

### `accepted_seeds` — `array[string]` (read-only) *(optional)*

### `captured_spawner_entity` — `LuaEntityPrototype` (read-only) *(optional)*

### `min_performance` — `ThrusterPerformancePoint` (read-only) *(optional)*

### `max_performance` — `ThrusterPerformancePoint` (read-only) *(optional)*

### `two_direction_only` — `boolean` (read-only) *(optional)*

### `perceived_performance` — `PerceivedPerformance` (read-only) *(optional)*

### `overkill_fraction` — `float` (read-only) *(optional)*

### `dying_explosion` — `array[ExplosionDefinition]` (read-only) *(optional)*

### `dying_trigger_effect` — `array[TriggerEffectItem]` (read-only) *(optional)*

### `damaged_trigger_effect` — `array[TriggerEffectItem]` (read-only) *(optional)*

### `attack_reaction` — `array[AttackReactionItem]` (read-only) *(optional)*

### `hide_resistances` — `boolean` (read-only) *(optional)*

### `random_corpse_variation` — `boolean` (read-only) *(optional)*

### `neighbour_connectable` — `NeighbourConnectable` (read-only) *(optional)*

### `tile_buildability_rules` — `array[TileBuildabilityRule]` (read-only) *(optional)*

### `support_range` — `float` (read-only) *(optional)*

### `reversing_power_modifier` — `double` (read-only) *(optional)*

### `territory_radius` — `uint32` (read-only) *(optional)*

### `enraged_duration` — `MapTick` (read-only) *(optional)*

### `patrolling_speed` — `double` (read-only) *(optional)*

### `investigating_speed` — `double` (read-only) *(optional)*

### `attacking_speed` — `double` (read-only) *(optional)*

### `enraged_speed` — `double` (read-only)

### `acceleration_rate` — `double` (read-only)

### `turn_radius` — `double` (read-only) *(optional)*

### `patrolling_turn_radius` — `double` (read-only) *(optional)*

### `turn_smoothing` — `double` (read-only) *(optional)*

### `ticks_per_scan` — `uint32` (read-only) *(optional)*

### `segment_engine` — `SegmentEngineSpecification` (read-only) *(optional)*

### `running_speed` — `double` (read-only) *(optional)*

The movement speed of this character prototype.

### `maximum_corner_sliding_distance` — `double` (read-only) *(optional)*

### `build_distance` — `uint32` (read-only) *(optional)*

### `drop_item_distance` — `uint32` (read-only) *(optional)*

### `reach_distance` — `uint32` (read-only) *(optional)*

### `reach_resource_distance` — `double` (read-only) *(optional)*

### `item_pickup_distance` — `double` (read-only) *(optional)*

### `loot_pickup_distance` — `double` (read-only) *(optional)*

### `enter_vehicle_distance` — `double` (read-only) *(optional)*

### `ticks_to_keep_gun` — `uint32` (read-only) *(optional)*

### `ticks_to_keep_aiming_direction` — `uint32` (read-only) *(optional)*

### `ticks_to_stay_in_combat` — `uint32` (read-only) *(optional)*

### `respawn_time` — `uint32` (read-only) *(optional)*

### `damage_hit_tint` — `Color` (read-only) *(optional)*

### `character_corpse` — `LuaEntityPrototype` (read-only) *(optional)*

### `arm_inventory_size_quality_increase` — `uint32` (read-only) *(optional)*

### `inventory_size_quality_increase` — `uint32` (read-only) *(optional)*

### `passive_energy_usage` — `double` (read-only) *(optional)*

### `arm_energy_usage` — `double` (read-only) *(optional)*

### `arm_slow_energy_usage` — `double` (read-only) *(optional)*

### `energy_usage_quality_scaling` — `float` (read-only) *(optional)*

### `arm_count_base` — `uint32` (read-only) *(optional)*

### `arm_count_quality_scaling` — `uint32` (read-only) *(optional)*

### `head_collection_radius` — `float` (read-only) *(optional)*

### `collection_box_offset` — `float` (read-only) *(optional)*

### `deposit_radius` — `float` (read-only) *(optional)*

### `arm_speed_base` — `float` (read-only) *(optional)*

### `arm_speed_quality_scaling` — `float` (read-only) *(optional)*

### `arm_angular_speed_cap_base` — `float` (read-only) *(optional)*

### `arm_angular_speed_cap_quality_scaling` — `float` (read-only) *(optional)*

### `tether_size` — `float` (read-only) *(optional)*

### `unpowered_arm_speed_scale` — `float` (read-only) *(optional)*

### `minimal_arm_swing_segment_retraction` — `uint32` (read-only) *(optional)*

### `held_items_offset` — `float` (read-only) *(optional)*

### `held_items_spread` — `float` (read-only) *(optional)*

### `held_items_display_count` — `uint8` (read-only) *(optional)*

### `arm_color_gradient` — `array[Color]` (read-only) *(optional)*

### `fluid_buffer_size` — `FluidAmount` (read-only) *(optional)*

### `activation_buffer_ratio` — `FluidAmount` (read-only) *(optional)*

### `fluid_buffer_input_flow` — `FluidAmount` (read-only) *(optional)*

### `range_from_player` — `double` (read-only) *(optional)*

### `combat_robot_friction` — `double` (read-only) *(optional)*

### `destroy_action` — `array[TriggerItem]` (read-only) *(optional)*

### `follows_player` — `boolean` (read-only) *(optional)*

### `strike_effect` — `array[TriggerItem]` (read-only) *(optional)*

### `attractor_hit_effect` — `array[TriggerItem]` (read-only) *(optional)*

### `damage` — `double` (read-only) *(optional)*

When lightning strikes something that is not a lightning attractor, this damage is applied to the
target.

### `energy` — `double` (read-only) *(optional)*

When lightning hits a lightning attractor this amount of energy is transferred to the lightning
attractor.

### `connection_category` — `array[string]` (read-only)

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

### `has_flag(flag: EntityPrototypeFlag) -> boolean`

Test whether this entity prototype has a certain flag set.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `flag` | `EntityPrototypeFlag` | no | The flag to test. |

**Returns:**

- `boolean` — `true` if this prototype has the given flag set.

### `get_inventory_size(index: defines.inventory, ?quality: QualityID) -> uint32`

Gets the base size of the given inventory on this entity or `nil` if the given inventory doesn't
exist.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `defines.inventory` | no |  |
| `quality` | `QualityID` | yes | Defaults to `"normal"`. |

**Returns:**

- `uint32` — 

### `get_crafting_speed(?quality: QualityID) -> double`

The crafting speed of this crafting-machine or character.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_supply_area_distance(?quality: QualityID) -> double`

The supply area of this electric pole or beacon prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_max_wire_distance(?quality: QualityID) -> double`

The maximum wire distance for this entity. 0 if the entity doesn't support wires.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_max_circuit_wire_distance(?quality: QualityID) -> double`

The maximum circuit wire distance for this entity. 0 if the entity doesn't support circuit wires.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_max_energy_usage(?quality: QualityID) -> double`

The theoretical maximum energy usage for this entity.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_max_energy_production(?quality: QualityID) -> double`

The theoretical maximum energy production for this entity.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_max_energy(?quality: QualityID) -> double`

The max energy for this flying robot prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_inserter_extension_speed(?quality: QualityID) -> double`

The extension speed of this inserter.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_inserter_rotation_speed(?quality: QualityID) -> double`

The rotation speed of this inserter.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_researching_speed(?quality: QualityID) -> double`

The base researching speed of this lab prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_max_distance_of_sector_revealed(?quality: QualityID) -> uint32`

The radius of the area this radar can chart, in chunks.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `uint32` — 

### `get_max_distance_of_nearby_sector_revealed(?quality: QualityID) -> uint32`

The radius of the area constantly revealed by this radar, or cargo landing pad, in chunks.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `uint32` — 

### `get_max_health(?quality: QualityID) -> float`

Max health of this entity. Will be `0` if this is not an entity with health.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `float` — 

### `get_fluid_usage_per_tick(?quality: QualityID) -> double`

The fluid usage of this generator, fusion generator or fusion reactor prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_max_power_output(?quality: QualityID) -> double`

The maximum power output of this burner generator or generator prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_pumping_speed(?quality: QualityID) -> double`

The pumping speed of this offshore pump or normal pump.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_valve_flow_rate(?quality: QualityID) -> double`

The maximum flow rate through this valve.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_mining_drill_radius(?quality: QualityID) -> double`

The mining radius of this mining drill prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_fluid_capacity(?quality: QualityID) -> double`

Gets the fluid capacity of this entity or 0 if this entity doesn't support fluids.  Crafting
machines will report 0 due to their fluid capacity being whatever a given recipe needs.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_attraction_range_elongation(?quality: QualityID) -> double`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 

### `get_energy_distribution_efficiency(?quality: QualityID) -> double`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 
