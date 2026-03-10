# CarPrototype
*typename: `car`*
*extends: `VehiclePrototype`*

Entity with specialized properties for acceleration, braking, and turning.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `animation` | `RotatedAnimation` | yes | Animation speed 1 means 1 frame per tile. |
| `effectivity` | `double` | no | Modifies the efficiency of energy transfer from burner output to wheels. |
| `consumption` | `Energy` | no |  |
| `rotation_speed` | `double` | no |  |
| `rotation_snap_angle` | `double` | no | Vehicle will snap the vertical, horizontal or diagonal axis if it's within this angle |
| `energy_source` | `BurnerEnergySource | VoidEnergySource` | no |  |
| `turret_animation` | `RotatedAnimation` | yes | Animation speed 1 means 1 frame per tile. |
| `light_animation` | `RotatedAnimation` | yes | Must have the same frame count as `animation`. |
| `render_layer` | `RenderLayer` | yes |  |
| `tank_driving` | `boolean` | yes | If this car prototype uses tank controls to drive. |
| `auto_sort_inventory` | `boolean` | yes | If this car prototype keeps the trunk inventory sorted. |
| `has_belt_immunity` | `boolean` | yes | If this car is immune to movement by belts. |
| `immune_to_tree_impacts` | `boolean` | yes | If this car gets damaged by driving over/against [trees](prototype:TreePrototype). |
| `immune_to_rock_impacts` | `boolean` | yes | If this car gets damaged by driving over/against [rocks](prototype:SimpleEntityPrototype::count_as_rock_for_filtered_... |
| `immune_to_cliff_impacts` | `boolean` | yes | If this car gets damaged by driving against [cliffs](prototype:CliffPrototype). |
| `turret_rotation_speed` | `float` | yes |  |
| `turret_return_timeout` | `uint32` | yes | Timeout in ticks specifying how long the turret must be inactive to return to the default position. |
| `inventory_size` | `ItemStackIndex` | no | Size of the car inventory. |
| `trash_inventory_size` | `ItemStackIndex` | yes | If set to 0 then the car will not have a Logistics tab. |
| `light` | `LightDefinition` | yes |  |
| `sound_no_fuel` | `Sound` | yes |  |
| `darkness_to_render_light_animation` | `float` | yes |  |
| `track_particle_triggers` | `FootstepTriggerEffectList` | yes |  |
| `guns` | `array[ItemID]` | yes | The names of the [GunPrototype](prototype:GunPrototype)s this car prototype uses. |
