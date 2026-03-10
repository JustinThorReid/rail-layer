# LabPrototype
*typename: `lab`*
*extends: `EntityWithOwnerPrototype`*

A [lab](https://wiki.factorio.com/Lab). It consumes [science packs](prototype:ToolPrototype) to
research [technologies](prototype:TechnologyPrototype).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_usage` | `Energy` | no | The amount of energy this lab uses. |
| `energy_source` | `EnergySource` | no | Defines how this lab gets energy. |
| `on_animation` | `Animation` | yes | The animation that plays when the lab is active. |
| `off_animation` | `Animation` | yes | The animation that plays when the lab is idle. |
| `frozen_patch` | `Sprite` | yes |  |
| `inputs` | `array[ItemID]` | no | A list of the names of science packs that can be used in this lab. If a technology requires other types of science pa... |
| `researching_speed` | `double` | yes |  |
| `effect_receiver` | `EffectReceiver` | yes |  |
| `module_slots` | `ItemStackIndex` | yes | The number of module slots in this lab. |
| `quality_affects_module_slots` | `boolean` | yes | If set, [QualityPrototype::lab_module_slots_bonus](prototype:QualityPrototype::lab_module_slots_bonus) will be added ... |
| `uses_quality_drain_modifier` | `boolean` | yes | Whether the [QualityPrototype::science_pack_drain_multiplier](prototype:QualityPrototype::science_pack_drain_multipli... |
| `science_pack_drain_rate_percent` | `uint8` | yes | May not be `0` or larger than `100`. |
| `allowed_effects` | `EffectTypeLimitation` | yes | Sets the [modules](prototype:ModulePrototype) and [beacon](prototype:BeaconPrototype) effects that are allowed to be ... |
| `allowed_module_categories` | `array[ModuleCategoryID]` | yes | Sets the [module categories](prototype:ModuleCategory) that are allowed to be inserted into this machine. |
| `light` | `LightDefinition` | yes |  |
| `trash_inventory_size` | `ItemStackIndex` | yes |  |
