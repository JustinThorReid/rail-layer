# ReactorPrototype
*typename: `reactor`*
*extends: `EntityWithOwnerPrototype`*

A [reactor](https://wiki.factorio.com/Reactor).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `working_light_picture` | `Animation` | yes |  |
| `heat_buffer` | `HeatBuffer` | no | The energy output as heat. |
| `heating_radius` | `double` | yes | Must be >= 0. |
| `energy_source` | `EnergySource` | no | May not be a heat energy source. The input energy source, in vanilla it is a burner energy source. |
| `consumption` | `Energy` | no | How much energy this reactor can consume (from the input energy source) and then output as heat. |
| `connection_patches_connected` | `SpriteVariations` | yes | If defined, number of variations must be at least equal to count of [connections](prototype:HeatBuffer::connections) ... |
| `connection_patches_disconnected` | `SpriteVariations` | yes | If defined, number of variations must be at least equal to count of [connections](prototype:HeatBuffer::connections) ... |
| `heat_connection_patches_connected` | `SpriteVariations` | yes | If defined, number of variations must be at least equal to count of [connections](prototype:HeatBuffer::connections) ... |
| `heat_connection_patches_disconnected` | `SpriteVariations` | yes | If defined, number of variations must be at least equal to count of [connections](prototype:HeatBuffer::connections) ... |
| `lower_layer_picture` | `Sprite` | yes |  |
| `heat_lower_layer_picture` | `Sprite` | yes |  |
| `picture` | `Sprite` | yes |  |
| `light` | `LightDefinition` | yes |  |
| `meltdown_action` | `Trigger` | yes | The action is triggered when the reactor dies (is destroyed) at over 90% of max temperature. |
| `neighbour_bonus` | `double` | yes |  |
| `scale_energy_usage` | `boolean` | yes | When this is true, the reactor will stop consuming fuel/energy when the temperature has reached the maximum. |
| `use_fuel_glow_color` | `boolean` | yes | Whether the reactor should use [fuel_glow_color](prototype:ItemPrototype::fuel_glow_color) from the fuel item prototy... |
| `default_fuel_glow_color` | `Color` | yes | When `use_fuel_glow_color` is true, this is the color used as `working_light_picture` tint for fuels that don't have ... |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `default_temperature_signal` | `SignalIDConnector` | yes |  |
