# QualityPrototype
*typename: `quality`*
*extends: `Prototype`*

One quality step. Its effects are specified by the level and the various multiplier and bonus
properties. Properties ending in `_multiplier` are applied multiplicatively to their base property,
properties ending in `_bonus` are applied additively.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `draw_sprite_by_default` | `boolean` | yes |  |
| `color` | `Color` | no |  |
| `level` | `uint32` | no | Requires Space Age to use level greater than `0`. |
| `next` | `QualityID` | yes |  |
| `next_probability` | `double` | yes | The quality [effect of the module](prototype:ModulePrototype::effect) is multiplied by this. For example, if a module... |
| `icons` | `array[IconData]` | yes | Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon file. Only loaded, and mandatory if `icons` is not defined. |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
| `beacon_power_usage_multiplier` | `float` | yes | Must be >= 0. |
| `mining_drill_resource_drain_multiplier` | `float` | yes | Must be in range `[0, 1]`. |
| `science_pack_drain_multiplier` | `float` | yes | Must be in range `[0, 1]`. Only affects labs with [LabPrototype::uses_quality_drain_modifier](prototype:LabPrototype:... |
| `name` | `string` | no | Unique textual identification of the prototype. May only contain alphanumeric characters, dashes and underscores. May... |
| `default_multiplier` | `double` | yes | Must be >= 0.01. |
| `inserter_speed_multiplier` | `double` | yes | Must be >= 0.01. |
| `fluid_wagon_capacity_multiplier` | `double` | yes | Must be >= 0.01. Only affects fluid wagons with [FluidWagonPrototype::quality_affects_capacity](prototype:FluidWagonP... |
| `inventory_size_multiplier` | `double` | yes | Must be >= 0.01. |
| `lab_research_speed_multiplier` | `double` | yes | Must be >= 0.01. |
| `crafting_machine_speed_multiplier` | `double` | yes | Must be >= 0.01. Will be ignored by crafting machines with [CraftingMachinePrototype::crafting_speed_quality_multipli... |
| `crafting_machine_energy_usage_multiplier` | `double` | yes | Must be >= 0.01. Only affects crafting machines with [CraftingMachinePrototype::quality_affects_energy_usage](prototy... |
| `logistic_cell_charging_energy_multiplier` | `double` | yes | Must be >= 0.01. |
| `tool_durability_multiplier` | `double` | yes | Must be >= 0.01. Affects the durability of [tool items](prototype:ToolPrototype) like science packs, repair tools and... |
| `accumulator_capacity_multiplier` | `double` | yes | Must be >= 0.01. |
| `flying_robot_max_energy_multiplier` | `double` | yes | Must be >= 0.01. |
| `range_multiplier` | `double` | yes | Must be within `[1, 3]`. Affects the range of [attack parameters](prototype:AttackParameters), e.g. those used by com... |
| `asteroid_collector_collection_radius_bonus` | `double` | yes | Must be >= 0. Performance warning: the navigation has to pre-calculate ranges for the highest tier collector possible... |
| `equipment_grid_width_bonus` | `int16` | yes |  |
| `equipment_grid_height_bonus` | `int16` | yes |  |
| `electric_pole_wire_reach_bonus` | `float` | yes | Must be >= 0. |
| `electric_pole_supply_area_distance_bonus` | `float` | yes | Must be >= 0. |
| `beacon_supply_area_distance_bonus` | `float` | yes | Only affects beacons with [BeaconPrototype::quality_affects_supply_area_distance](prototype:BeaconPrototype::quality_... |
| `mining_drill_mining_radius_bonus` | `float` | yes | Only affects mining drills with [MiningDrillPrototype::quality_affects_mining_radius](prototype:MiningDrillPrototype:... |
| `logistic_cell_charging_station_count_bonus` | `uint32` | yes | Only affects roboports with [RoboportPrototype::charging_station_count_affected_by_quality](prototype:RoboportPrototy... |
| `beacon_module_slots_bonus` | `ItemStackIndex` | yes | Only affects beacons with [BeaconPrototype::quality_affects_module_slots](prototype:BeaconPrototype::quality_affects_... |
| `crafting_machine_module_slots_bonus` | `ItemStackIndex` | yes | Only affects crafting machines with [CraftingMachinePrototype::quality_affects_module_slots](prototype:CraftingMachin... |
| `mining_drill_module_slots_bonus` | `ItemStackIndex` | yes | Only affects mining drills with [MiningDrillPrototype::quality_affects_module_slots](prototype:MiningDrillPrototype::... |
| `lab_module_slots_bonus` | `ItemStackIndex` | yes | Only affects labs with [LabPrototype::quality_affects_module_slots](prototype:LabPrototype::quality_affects_module_sl... |
