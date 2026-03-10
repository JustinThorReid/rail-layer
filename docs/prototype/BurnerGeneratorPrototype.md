# BurnerGeneratorPrototype
*typename: `burner-generator`*
*extends: `EntityWithOwnerPrototype`*

An entity that produces power from a burner energy source.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource` | no | The output energy source of the generator. Any emissions specified on this energy source are ignored, they must be sp... |
| `burner` | `BurnerEnergySource` | no | The input energy source of the generator. |
| `animation` | `Animation4Way` | yes | Plays when the generator is active. `idle_animation` must have the same frame count as animation. |
| `max_power_output` | `Energy` | no | How much energy this generator can produce. |
| `idle_animation` | `Animation4Way` | yes | Plays when the generator is inactive. Idle animation must have the same frame count as `animation`. |
| `always_draw_idle_animation` | `boolean` | yes | Whether the `idle_animation` should also play when the generator is active. |
| `perceived_performance` | `PerceivedPerformance` | yes | Affects animation speed and working sound. |
