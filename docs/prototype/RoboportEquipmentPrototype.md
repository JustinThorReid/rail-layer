# RoboportEquipmentPrototype
*typename: `roboport-equipment`*
*extends: `EquipmentPrototype`*

Used by [personal roboport](https://wiki.factorio.com/Personal_roboport).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `recharging_animation` | `Animation` | yes | The animation played at each charging point when a robot is charging there. |
| `spawn_and_station_height` | `float` | no | Presumably states the height of the charging stations and thus an additive offset for the charging_offsets. |
| `charge_approach_distance` | `float` | no | Presumably, the distance from the roboport at which robots will wait to charge. |
| `construction_radius` | `float` | no | Can't be negative. |
| `charging_energy` | `Energy` | no |  |
| `spawn_and_station_shadow_height_offset` | `float` | yes |  |
| `stationing_render_layer_swap_height` | `float` | yes | When robot ascends or descends to this roboport, at which height is should switch between `"air-object"` and `"object... |
| `draw_logistic_radius_visualization` | `boolean` | yes | Unused, as roboport equipment does not have a logistic radius that could be drawn. |
| `draw_construction_radius_visualization` | `boolean` | yes |  |
| `recharging_light` | `LightDefinition` | yes | The light emitted when charging a robot. |
| `charging_station_count` | `uint32` | yes | How many charging points this roboport has. If this is 0, the length of the charging_offsets table is used to calcula... |
| `charging_station_count_affected_by_quality` | `boolean` | yes |  |
| `charging_distance` | `float` | yes |  |
| `charging_station_shift` | `Vector` | yes |  |
| `charging_threshold_distance` | `float` | yes | Distance in tiles. This defines how far away a robot can be from the charging spot and still be charged, however the ... |
| `robot_vertical_acceleration` | `float` | yes |  |
| `stationing_offset` | `Vector` | yes | The offset from the center of the roboport at which robots will enter and exit. |
| `robot_limit` | `ItemCountType` | yes | How many robots can exist in the network (cumulative). |
| `robots_shrink_when_entering_and_exiting` | `boolean` | yes |  |
| `charging_offsets` | `array[Vector]` | yes | The offsets from the center of the roboport at which robots will charge. Only used if `charging_station_count` is equ... |
| `spawn_minimum` | `Energy` | yes | Minimum amount of energy that needs to available inside the roboport's buffer so that robots can be spawned. |
| `burner` | `BurnerEnergySource` | yes | Add this is if the roboport should be fueled directly instead of using power from the equipment grid. |
| `power` | `Energy` | yes | Mandatory if `burner` is defined. The size of the buffer of the burner energy source, so effectively the amount of po... |
