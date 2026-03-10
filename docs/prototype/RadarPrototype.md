# RadarPrototype
*typename: `radar`*
*extends: `EntityWithOwnerPrototype`*

A [radar](https://wiki.factorio.com/Radar).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_usage` | `Energy` | no | The amount of energy this radar uses. |
| `energy_per_sector` | `Energy` | no | The amount of energy it takes to scan a sector. This value doesn't have any effect on nearby scanning. |
| `energy_per_nearby_scan` | `Energy` | no | The amount of energy the radar has to consume for nearby scan to be performed. This value doesn't have any effect on ... |
| `energy_source` | `EnergySource` | no | The energy source for this radar. |
| `pictures` | `RotatedSprite` | yes |  |
| `frozen_patch` | `Sprite` | yes |  |
| `max_distance_of_sector_revealed` | `uint32` | no | The radius of the area this radar can chart, in chunks. |
| `max_distance_of_nearby_sector_revealed` | `uint32` | no | The radius of the area constantly revealed by this radar, in chunks. |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `radius_minimap_visualisation_color` | `Color` | yes |  |
| `rotation_speed` | `double` | yes |  |
| `connects_to_other_radars` | `boolean` | yes | If set to true, radars on the same surface will connect to other radars on the same surface using hidden wires with [... |
| `reset_orientation_when_frozen` | `boolean` | yes |  |
| `energy_fraction_to_connect` | `float` | yes | Must be between 0 and 1. Must be larger than or equal to `energy_fraction_to_disconnect`. |
| `energy_fraction_to_disconnect` | `float` | yes | Must be between 0 and 1. Must be less than or equal to `energy_fraction_to_connect`. |
| `is_military_target` | `boolean` | yes | Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https:/... |
