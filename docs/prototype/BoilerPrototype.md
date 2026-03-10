# BoilerPrototype
*typename: `boiler`*
*extends: `EntityWithOwnerPrototype`*

A [boiler](https://wiki.factorio.com/Boiler). It heats fluid and optionally outputs it as a
different fluid.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `pictures` | `BoilerPictureSet` | yes |  |
| `energy_source` | `EnergySource` | no |  |
| `fluid_box` | `FluidBox` | no | The input fluid box. If `mode` is `"heat-fluid-inside"`, the fluid is heated up directly in this fluidbox. |
| `output_fluid_box` | `FluidBox` | no | The output fluid box. If `mode` is `"output-to-separate-pipe"` and this has a [filter](prototype:FluidBox::filter), t... |
| `energy_consumption` | `Energy` | no |  |
| `burning_cooldown` | `uint16` | no | Controls for how many ticks the boiler will show the fire and fire_glow after the energy source runs out of energy. N... |
| `target_temperature` | `float` | yes | Only loaded, and mandatory if `mode` is `"output-to-separate-pipe"`. This is the temperature that the input fluid mus... |
| `fire_glow_flicker_enabled` | `boolean` | yes | If this is set to false, `fire_glow` alpha is always 1 instead of being controlled by the light intensity of the ener... |
| `fire_flicker_enabled` | `boolean` | yes | If this is set to false, `fire` alpha is always 1 instead of being controlled by the light intensity of the energy so... |
| `mode` | `'heat-fluid-inside' | 'output-to-separate-pipe'` | yes | In the `"output-to-separate-pipe"` mode, fluid is transferred from the `fluid_box` to the `output_fluid_box` when eno... |
