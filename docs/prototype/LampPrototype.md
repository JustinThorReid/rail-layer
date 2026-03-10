# LampPrototype
*typename: `lamp`*
*extends: `EntityWithOwnerPrototype`*

A [lamp](https://wiki.factorio.com/Lamp) to provide light, using energy.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `picture_on` | `Sprite` | yes | The lamps graphics when it's on. |
| `picture_off` | `Sprite` | yes | The lamps graphics when it's off. |
| `energy_usage_per_tick` | `Energy` | no | The amount of energy the lamp uses. Must be greater than > 0. |
| `energy_source` | `ElectricEnergySource | VoidEnergySource` | no | The emissions set on the energy source are ignored so lamps cannot produce pollution. |
| `light` | `LightDefinition` | yes | What color the lamp will be when it is on, and receiving power. |
| `light_when_colored` | `LightDefinition` | yes | This refers to when the light is in a circuit network, and is lit a certain color based on a signal value. |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `glow_size` | `float` | yes |  |
| `glow_color_intensity` | `float` | yes |  |
| `darkness_for_all_lamps_on` | `float` | yes | darkness_for_all_lamps_on must be > darkness_for_all_lamps_off. Values must be between 0 and 1. |
| `darkness_for_all_lamps_off` | `float` | yes | darkness_for_all_lamps_on must be > darkness_for_all_lamps_off. Values must be between 0 and 1. |
| `always_on` | `boolean` | yes | Whether the lamp should always be on. |
| `signal_to_color_mapping` | `array[SignalColorMapping]` | yes |  |
| `glow_render_mode` | `'additive' | 'multiplicative'` | yes |  |
| `default_red_signal` | `SignalIDConnector` | yes |  |
| `default_green_signal` | `SignalIDConnector` | yes |  |
| `default_blue_signal` | `SignalIDConnector` | yes |  |
| `default_rgb_signal` | `SignalIDConnector` | yes |  |
