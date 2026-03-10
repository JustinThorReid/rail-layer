# GeneratorPrototype
*typename: `generator`*
*extends: `EntityWithOwnerPrototype`*

An entity that produces power from fluids, for example a [steam
engine](https://wiki.factorio.com/Steam_engine).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource` | no |  |
| `fluid_box` | `FluidBox` | no | This must have a filter if `max_power_output` is not defined. |
| `horizontal_animation` | `Animation` | yes |  |
| `vertical_animation` | `Animation` | yes |  |
| `horizontal_frozen_patch` | `Sprite` | yes |  |
| `vertical_frozen_patch` | `Sprite` | yes |  |
| `effectivity` | `double` | yes | How much energy the generator produces compared to how much energy it consumes. For example, an effectivity of 0.5 me... |
| `fluid_usage_per_tick` | `FluidAmount` | no | The number of fluid units the generator uses per tick. |
| `maximum_temperature` | `float` | no | The maximum temperature to which the efficiency can increase. At this temperature the generator will run at 100% effi... |
| `smoke` | `array[SmokeSource]` | yes |  |
| `burns_fluid` | `boolean` | yes | If set to `true`, the available power output is based on the [FluidPrototype::fuel_value](prototype:FluidPrototype::f... |
| `scale_fluid_usage` | `boolean` | yes | Scales the generator's fluid usage to its maximum power output. Setting this to true prevents the generator from over... |
| `destroy_non_fuel_fluid` | `boolean` | yes | This property is used when `burns_fluid` is true and the fluid has a [fuel_value](prototype:FluidPrototype::fuel_valu... |
| `perceived_performance` | `PerceivedPerformance` | yes | Affects animation speed and working sound. |
| `max_power_output` | `Energy` | yes | The power production of the generator is capped to this value. This is also the value that is shown as the maximum po... |
