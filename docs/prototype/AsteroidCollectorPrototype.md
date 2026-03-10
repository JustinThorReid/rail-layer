# AsteroidCollectorPrototype
*typename: `asteroid-collector`*
*extends: `EntityWithOwnerPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `arm_inventory_size` | `ItemStackIndex` | yes |  |
| `arm_inventory_size_quality_increase` | `ItemStackIndex` | yes |  |
| `inventory_size` | `ItemStackIndex` | yes |  |
| `inventory_size_quality_increase` | `ItemStackIndex` | yes |  |
| `graphics_set` | `AsteroidCollectorGraphicsSet` | no |  |
| `passive_energy_usage` | `Energy` | no |  |
| `arm_energy_usage` | `Energy` | no |  |
| `arm_slow_energy_usage` | `Energy` | no | If `arm_energy_usage` is not met, attempts to move slower at the cost of `arm_slow_energy_usage`. |
| `energy_usage_quality_scaling` | `float` | yes |  |
| `arm_count_base` | `uint32` | yes |  |
| `arm_count_quality_scaling` | `uint32` | yes |  |
| `head_collection_radius` | `float` | yes |  |
| `collection_box_offset` | `float` | yes |  |
| `deposit_radius` | `float` | yes |  |
| `arm_speed_base` | `float` | yes |  |
| `arm_speed_quality_scaling` | `float` | yes |  |
| `arm_angular_speed_cap_base` | `float` | yes |  |
| `arm_angular_speed_cap_quality_scaling` | `float` | yes |  |
| `tether_size` | `float` | yes |  |
| `unpowered_arm_speed_scale` | `float` | yes |  |
| `minimal_arm_swing_segment_retraction` | `uint32` | yes |  |
| `held_items_offset` | `float` | yes |  |
| `held_items_spread` | `float` | yes |  |
| `held_items_display_count` | `uint8` | yes |  |
| `munch_sound` | `Sound` | yes |  |
| `deposit_sound` | `Sound` | yes |  |
| `arm_extend_sound` | `Sound` | yes |  |
| `arm_retract_sound` | `Sound` | yes |  |
| `energy_source` | `ElectricEnergySource | VoidEnergySource` | no |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `radius_visualisation_picture` | `Sprite` | yes |  |
| `collection_radius` | `double` | no | Must be positive. |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
| `arm_color_gradient` | `array[Color]` | yes |  |
