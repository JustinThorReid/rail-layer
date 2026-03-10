# MiningDrillPrototype
*typename: `mining-drill`*
*extends: `EntityWithOwnerPrototype`*

A mining drill for automatically extracting resources from [resource
entities](prototype:ResourceEntityPrototype). This prototype type is used by [burner mining
drill](https://wiki.factorio.com/Burner_mining_drill), [electric mining
drill](https://wiki.factorio.com/Electric_mining_drill) and
[pumpjack](https://wiki.factorio.com/Pumpjack) in vanilla.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `vector_to_place_result` | `Vector` | no | The position where any item results are placed, when the mining drill is facing north (default direction). If the dri... |
| `resource_searching_radius` | `double` | no | The distance from the center of the mining drill to search for resources in. This is 2.49 for electric mining drills ... |
| `resource_searching_offset` | `Vector` | yes | Offset of the `resource_searching_radius` from the entity center when the mining drill is facing north. |
| `energy_usage` | `Energy` | no | The amount of energy used by the drill while mining. Can't be less than or equal to 0. |
| `mining_speed` | `double` | no | The speed of this drill. |
| `energy_source` | `EnergySource` | no | The energy source of this mining drill. |
| `resource_categories` | `array[ResourceCategoryID]` | no | The names of the [ResourceCategory](prototype:ResourceCategory) that can be mined by this drill. For a list of built-... |
| `output_fluid_box` | `FluidBox` | yes |  |
| `input_fluid_box` | `FluidBox` | yes |  |
| `graphics_set` | `MiningDrillGraphicsSet` | yes |  |
| `wet_mining_graphics_set` | `MiningDrillGraphicsSet` | yes |  |
| `perceived_performance` | `PerceivedPerformance` | yes | Affects animation speed. |
| `base_picture` | `Sprite4Way` | yes | Used by the [pumpjack](https://wiki.factorio.com/Pumpjack) to have a static 4 way sprite. |
| `effect_receiver` | `EffectReceiver` | yes |  |
| `module_slots` | `ItemStackIndex` | yes | The number of module slots in this machine. |
| `quality_affects_module_slots` | `boolean` | yes | If set, [QualityPrototype::mining_drill_module_slots_bonus](prototype:QualityPrototype::mining_drill_module_slots_bon... |
| `allowed_effects` | `EffectTypeLimitation` | yes | Sets the [modules](prototype:ModulePrototype) and [beacon](prototype:BeaconPrototype) effects that are allowed to be ... |
| `allowed_module_categories` | `array[ModuleCategoryID]` | yes | Sets the [module categories](prototype:ModuleCategory) that are allowed to be inserted into this machine. |
| `radius_visualisation_picture` | `Sprite` | yes | The sprite used to show the range of the mining drill. |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `base_render_layer` | `RenderLayer` | yes |  |
| `resource_drain_rate_percent` | `uint8` | yes | May not be `0` or larger than `100`. |
| `shuffle_resources_to_mine` | `boolean` | yes |  |
| `drops_full_belt_stacks` | `boolean` | yes |  |
| `uses_force_mining_productivity_bonus` | `boolean` | yes |  |
| `quality_affects_mining_radius` | `boolean` | yes | If set, [QualityPrototype::mining_drill_mining_radius_bonus](prototype:QualityPrototype::mining_drill_mining_radius_b... |
| `moving_sound` | `InterruptibleSound` | yes |  |
| `drilling_sound` | `InterruptibleSound` | yes |  |
| `drilling_sound_animation_start_frame` | `uint16` | yes |  |
| `drilling_sound_animation_end_frame` | `uint16` | yes |  |
| `monitor_visualization_tint` | `Color` | yes | When this mining drill is connected to the circuit network, the resource that it is reading (either the entire resour... |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
| `filter_count` | `uint8` | yes | How many filters this mining drill has. Maximum count of filtered resources in a mining drill is 5. |
