# VehiclePrototype
*extends: `EntityWithOwnerPrototype`*

Abstract base of all vehicles.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `weight` | `double` | no | Must be positive. Weight of the entity used for physics calculation when car hits something. |
| `braking_power` | `Energy | double` | no | Must be positive. There is no functional difference between the two ways to set braking power/force. |
| `friction` | `double` | no | Must be positive. There is no functional difference between the two ways to set friction force. |
| `energy_per_hit_point` | `double` | no | The (movement) energy used per hit point (1 hit point = 1 health damage) taken and dealt for this vehicle during coll... |
| `terrain_friction_modifier` | `float` | yes | Must be in the [0, 1] interval. |
| `impact_speed_to_volume_ratio` | `double` | yes |  |
| `stop_trigger_speed` | `double` | yes |  |
| `crash_trigger` | `TriggerEffect` | yes |  |
| `stop_trigger` | `TriggerEffect` | yes |  |
| `equipment_grid` | `EquipmentGridID` | yes | The name of the [EquipmentGridPrototype](prototype:EquipmentGridPrototype) this vehicle has. |
| `minimap_representation` | `Sprite` | yes | The sprite that represents this vehicle on the map/minimap. |
| `selected_minimap_representation` | `Sprite` | yes | The sprite that represents this vehicle on the map/minimap when it is selected. |
| `allow_passengers` | `boolean` | yes | Determines whether this vehicle accepts passengers. This includes both drivers and gunners, if applicable. |
| `deliver_category` | `string` | yes | Name of a [DeliverCategory](prototype:DeliverCategory). |
| `chunk_exploration_radius` | `uint32` | yes | In chunks. The radius of the radar range of the vehicle, so how many chunks it charts around itself. |
| `allow_remote_driving` | `boolean` | yes |  |
