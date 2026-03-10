# FusionGeneratorPrototype
*typename: `fusion-generator`*
*extends: `EntityWithOwnerPrototype`*

Consumes a fluid to generate electricity and create another fluid.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource` | no | `output_flow_limit` is mandatory and must be positive. `output_flow_limit` is the maximum power output of the generator. |
| `graphics_set` | `FusionGeneratorGraphicsSet` | yes |  |
| `input_fluid_box` | `FluidBox` | no | [filter](prototype:FluidBox::filter) is mandatory. The temperature (or fuel value if `burns_fluid` is true) of this f... |
| `output_fluid_box` | `FluidBox` | no | [filter](prototype:FluidBox::filter) is mandatory. |
| `max_fluid_usage` | `FluidAmount` | no | Must be positive. |
| `perceived_performance` | `PerceivedPerformance` | yes | Affects animation speed and working sound. |
| `burns_fluid` | `boolean` | yes | If set to `true`, the available power output is based on the [FluidPrototype::fuel_value](prototype:FluidPrototype::f... |
| `effectivity` | `double` | yes | `1` means 100% effectivity. Must be greater than `0`. Multiplier of the energy output. |
