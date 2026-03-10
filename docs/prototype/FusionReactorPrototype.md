# FusionReactorPrototype
*typename: `fusion-reactor`*
*extends: `EntityWithOwnerPrototype`*

Fusion reactor. Consumes fluid, fuel and additional energy to produce other fluid. Kind of advanced
boiler. Can also have neighbour bonus.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource` | no | First energy source for the process: provides energy |
| `burner` | `BurnerEnergySource` | no | Second energy source for the process: provides fuel |
| `graphics_set` | `FusionReactorGraphicsSet` | no |  |
| `input_fluid_box` | `FluidBox` | no | The input fluid box. [filter](prototype:FluidBox::filter) is mandatory. |
| `output_fluid_box` | `FluidBox` | no | The output fluid box. [filter](prototype:FluidBox::filter) is mandatory. |
| `neighbour_connectable` | `NeighbourConnectable` | yes | Defines connection points to neighbours used to compute neighbour bonus. |
| `two_direction_only` | `boolean` | yes | If set to true, only North and East direction will be buildable. |
| `neighbour_bonus` | `float` | yes |  |
| `power_input` | `Energy` | no | Power input consumed from first energy source at full performance. Cannot be negative. |
| `max_fluid_usage` | `FluidAmount` | no | Maximum amount of fluid converted from `input_fluid_box` to `output_fluid_box` within a single tick. Must be positive. |
| `target_temperature` | `float` | yes | The temperature of the fluid to output. If not defined, the default temperature of the output fluid will be used. |
| `perceived_performance` | `PerceivedPerformance` | yes | Affects working sound. |
