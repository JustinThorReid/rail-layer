# RoboportPrototype
*typename: `roboport`*
*extends: `EntityWithOwnerPrototype`*

A [roboport](https://wiki.factorio.com/Roboport).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource | VoidEnergySource` | no | The roboport's energy source. |
| `energy_usage` | `Energy` | no | The amount of energy the roboport uses when idle. |
| `recharge_minimum` | `Energy` | no | Minimum charge that the roboport has to have after a blackout (0 charge/buffered energy) to begin working again. Addi... |
| `robot_slots_count` | `ItemStackIndex` | no | The number of robot slots in the roboport. |
| `material_slots_count` | `ItemStackIndex` | no | The number of repair pack slots in the roboport. |
| `base` | `Sprite` | yes |  |
| `base_patch` | `Sprite` | yes |  |
| `frozen_patch` | `Sprite` | yes |  |
| `base_animation` | `Animation` | yes | The animation played when the roboport is idle. |
| `door_animation_up` | `Animation` | yes |  |
| `door_animation_down` | `Animation` | yes |  |
| `request_to_open_door_timeout` | `uint32` | no |  |
| `radar_range` | `uint32` | yes | In chunks. The radius of how many chunks this roboport charts around itself. Defaults to the max of logistic range or... |
| `radar_visualisation_color` | `Color` | yes |  |
| `recharging_animation` | `Animation` | yes | The animation played at each charging point when a robot is charging there. |
| `spawn_and_station_height` | `float` | no | Presumably states the height of the charging stations and thus an additive offset for the charging_offsets. |
| `charge_approach_distance` | `float` | no | The distance (in tiles) from the roboport at which robots will wait to charge. Notably, if the robot is already in ra... |
| `logistics_radius` | `float` | no | Can't be negative. |
| `construction_radius` | `float` | no | Can't be negative. |
| `charging_energy` | `Energy` | no | The maximum power provided to each charging station. |
| `open_door_trigger_effect` | `TriggerEffect` | yes |  |
| `close_door_trigger_effect` | `TriggerEffect` | yes |  |
| `default_available_logistic_output_signal` | `SignalIDConnector` | yes |  |
| `default_total_logistic_output_signal` | `SignalIDConnector` | yes |  |
| `default_available_construction_output_signal` | `SignalIDConnector` | yes |  |
| `default_total_construction_output_signal` | `SignalIDConnector` | yes |  |
| `default_roboport_count_output_signal` | `SignalIDConnector` | yes |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `render_recharge_icon` | `boolean` | yes | Whether to render the [no charge](prototype:UtilitySprites::recharge_icon) icon if the roboport has less energy than ... |
| `max_logistic_slots` | `LogisticFilterIndex` | yes |  |
| `spawn_and_station_shadow_height_offset` | `float` | yes |  |
| `stationing_render_layer_swap_height` | `float` | yes | When robot ascends or descends to this roboport, at which height is should switch between `"air-object"` and `"object... |
| `draw_logistic_radius_visualization` | `boolean` | yes |  |
| `draw_construction_radius_visualization` | `boolean` | yes |  |
| `recharging_light` | `LightDefinition` | yes | The light emitted when charging a robot. |
| `charging_station_count` | `uint32` | yes | How many charging points this roboport has. If this is 0, the length of the charging_offsets table is used to calcula... |
| `charging_station_count_affected_by_quality` | `boolean` | yes |  |
| `charging_distance` | `float` | yes |  |
| `charging_station_shift` | `Vector` | yes |  |
| `charging_threshold_distance` | `float` | yes | Unused. |
| `robot_vertical_acceleration` | `float` | yes |  |
| `stationing_offset` | `Vector` | yes | The offset from the center of the roboport at which robots will enter and exit. |
| `robot_limit` | `ItemCountType` | yes | Unused. |
| `robots_shrink_when_entering_and_exiting` | `boolean` | yes |  |
| `charging_offsets` | `array[Vector]` | yes | The offsets from the center of the roboport at which robots will charge. Only used if `charging_station_count` is equ... |
| `logistics_connection_distance` | `float` | yes | Must be >= `logistics_radius`. |
