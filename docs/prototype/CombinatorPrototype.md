# CombinatorPrototype
*extends: `EntityWithOwnerPrototype`*

Abstract base type for decider and arithmetic combinators.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource | VoidEnergySource` | no | Defines how this combinator gets energy. The emissions set on the energy source are ignored so combinators cannot pro... |
| `active_energy_usage` | `Energy` | no |  |
| `sprites` | `Sprite4Way` | yes |  |
| `frozen_patch` | `Sprite4Way` | yes |  |
| `activity_led_sprites` | `Sprite4Way` | yes |  |
| `input_connection_bounding_box` | `BoundingBox` | no |  |
| `output_connection_bounding_box` | `BoundingBox` | no |  |
| `activity_led_light_offsets` | `(Vector, Vector, Vector, Vector)` | no |  |
| `screen_light_offsets` | `(Vector, Vector, Vector, Vector)` | no |  |
| `input_connection_points` | `(WireConnectionPoint, WireConnectionPoint, WireConnectionPoint, WireConnectionPoint)` | no |  |
| `output_connection_points` | `(WireConnectionPoint, WireConnectionPoint, WireConnectionPoint, WireConnectionPoint)` | no |  |
| `activity_led_light` | `LightDefinition` | yes |  |
| `screen_light` | `LightDefinition` | yes |  |
| `activity_led_hold_time` | `uint8` | yes |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `emissions_per_second` | `dict[AirbornePollutantID, double]` | yes | Emissions cannot be larger than zero, combinators cannot produce pollution. |
