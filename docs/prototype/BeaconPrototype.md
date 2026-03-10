# BeaconPrototype
*typename: `beacon`*
*extends: `EntityWithOwnerPrototype`*

Entity with the ability to transfer [module](prototype:ModulePrototype) effects to its neighboring
entities.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_usage` | `Energy` | no | The constant power usage of this beacon. |
| `energy_source` | `ElectricEnergySource | VoidEnergySource` | no |  |
| `supply_area_distance` | `uint32` | no | The maximum distance that this beacon can supply its neighbors with its module's effects. Max distance is 64. |
| `distribution_effectivity` | `double` | no | The multiplier of the module's effects, when shared between neighbors. |
| `distribution_effectivity_bonus_per_quality_level` | `double` | yes | Must be 0 or positive. |
| `module_slots` | `ItemStackIndex` | no | The number of module slots in this beacon. |
| `quality_affects_module_slots` | `boolean` | yes | If set, [QualityPrototype::beacon_module_slots_bonus](prototype:QualityPrototype::beacon_module_slots_bonus) will be ... |
| `quality_affects_supply_area_distance` | `boolean` | yes | If set, [QualityPrototype::beacon_supply_area_distance_bonus](prototype:QualityPrototype::beacon_supply_area_distance... |
| `graphics_set` | `BeaconGraphicsSet` | yes | The graphics for the beacon. |
| `animation` | `Animation` | yes | Only loaded if `graphics_set` is not defined. The animation for the beacon, when in use. |
| `base_picture` | `Animation` | yes | Only loaded if `graphics_set` is not defined. The picture of the beacon when it is not on. |
| `perceived_performance` | `PerceivedPerformance` | yes | Affects animation speed. |
| `radius_visualisation_picture` | `Sprite` | yes |  |
| `allowed_effects` | `EffectTypeLimitation` | yes | The types of [modules](prototype:ModulePrototype) that a player can place inside of the beacon. |
| `allowed_module_categories` | `array[ModuleCategoryID]` | yes | Sets the [module categories](prototype:ModuleCategory) that are allowed to be inserted into this machine. |
| `profile` | `array[double]` | yes | Extra multiplier applied to the effects received from beacon by the effect receiver based on amount of beacons that a... |
| `beacon_counter` | `'total' | 'same_type'` | yes | The beacon counter used by effect receiver when deciding which sample to take from `profile`. |
