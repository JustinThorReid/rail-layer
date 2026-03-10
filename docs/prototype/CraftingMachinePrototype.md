# CraftingMachinePrototype
*extends: `EntityWithOwnerPrototype`*

The abstract basis of the assembling machines and furnaces. Contains the properties that both of
them have.  Note that a crafting machine cannot be rotated unless it has at least one of the
following: a fluid box, a heat energy source, a fluid energy source, or a non-square collision box.
Crafting machines with non-square collision boxes can only be rotated before placement, not after.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality_affects_energy_usage` | `boolean` | yes | When set, [QualityPrototype::crafting_machine_energy_usage_multiplier](prototype:QualityPrototype::crafting_machine_e... |
| `energy_usage` | `Energy` | no | Sets how much energy this machine uses while crafting. Energy usage has to be positive. |
| `crafting_speed` | `double` | no | How fast this crafting machine can craft. 1 means that for example a 1 second long recipe take 1 second to craft. 0.5... |
| `crafting_categories` | `array[RecipeCategoryID]` | no | A list of [recipe categories](prototype:RecipeCategory) this crafting machine can use. |
| `energy_source` | `EnergySource` | no | Defines how the crafting machine is powered. When using an electric energy source and `drain` is not specified, it wi... |
| `fluid_boxes` | `array[FluidBox]` | yes | The crafting machine's fluid boxes. If an assembling machine has fluid boxes *and* [AssemblingMachinePrototype::fluid... |
| `effect_receiver` | `EffectReceiver` | yes |  |
| `module_slots` | `ItemStackIndex` | yes | The number of module slots in this machine. |
| `quality_affects_module_slots` | `boolean` | yes | If set, [QualityPrototype::crafting_machine_module_slots_bonus](prototype:QualityPrototype::crafting_machine_module_s... |
| `allowed_effects` | `EffectTypeLimitation` | yes | Sets the [modules](prototype:ModulePrototype) and [beacon](prototype:BeaconPrototype) effects that are allowed to be ... |
| `allowed_module_categories` | `array[ModuleCategoryID]` | yes | Sets the [module categories](prototype:ModuleCategory) that are allowed to be inserted into this machine. |
| `show_recipe_icon` | `boolean` | yes | Whether the "alt-mode icon" should be drawn at all. |
| `return_ingredients_on_change` | `boolean` | yes | Controls whether the ingredients of an in-progress recipe are destroyed when mining the machine/changing the recipe. ... |
| `draw_entity_info_icon_background` | `boolean` | yes | Whether the "alt-mode icon" should have a black background. |
| `match_animation_speed_to_activity` | `boolean` | yes | Whether the speed of the animation and working visualization should be based on the machine's speed (boosted or slowe... |
| `show_recipe_icon_on_map` | `boolean` | yes | Whether the recipe icon should be shown on the map. |
| `fast_transfer_modules_into_module_slots_only` | `boolean` | yes |  |
| `ignore_output_full` | `boolean` | yes |  |
| `graphics_set` | `CraftingMachineGraphicsSet` | yes |  |
| `graphics_set_flipped` | `CraftingMachineGraphicsSet` | yes |  |
| `perceived_performance` | `PerceivedPerformance` | yes | Affects animation speed. |
| `production_health_effect` | `ProductionHealthEffect` | yes |  |
| `trash_inventory_size` | `ItemStackIndex` | yes |  |
| `vector_to_place_result` | `Vector` | yes |  |
| `forced_symmetry` | `Mirroring` | yes |  |
| `crafting_speed_quality_multiplier` | `dict[QualityID, double]` | yes | Each value must be >= 0.01. If value is not provided for a quality, then [QualityPrototype::crafting_machine_speed_mu... |
| `module_slots_quality_bonus` | `dict[QualityID, ItemStackIndex]` | yes | If value is not provided for a quality, then [QualityPrototype::crafting_machine_module_slots_bonus](prototype:Qualit... |
| `energy_usage_quality_multiplier` | `dict[QualityID, double]` | yes | Each value must be >= 0.01. If value is not provided for a quality, then [QualityPrototype::crafting_machine_energy_u... |
