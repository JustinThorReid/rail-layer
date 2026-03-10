# SpiderLegPrototype
*typename: `spider-leg`*
*extends: `EntityWithOwnerPrototype`*

Used by [SpiderLegSpecification](prototype:SpiderLegSpecification) for
[SpiderVehiclePrototype](prototype:SpiderVehiclePrototype), also known as
[spidertron](https://wiki.factorio.com/Spidertron).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `stretch_force_scalar` | `double` | yes | A scalar that controls the amount of influence this leg has over the position of the torso. Must be greater than 0. |
| `hip_flexibility` | `double` | yes | The flexibility of hip. Must be between 0 and 1 inclusive. 0 means the hip doesn't flex at all, and 1 means the hip c... |
| `knee_height` | `double` | no | The resting height of the knee from the ground. Used to derive leg part length and size. If set too low, this could c... |
| `knee_distance_factor` | `double` | no | The placement of the knee relative to the torso of the spider and the end of the foot when at rest. Used to calculate... |
| `ankle_height` | `double` | yes | The height of the foot from the ground when at rest. |
| `initial_movement_speed` | `double` | no |  |
| `movement_acceleration` | `double` | no |  |
| `target_position_randomisation_distance` | `double` | no |  |
| `minimal_step_size` | `double` | no |  |
| `base_position_selection_distance` | `double` | no |  |
| `movement_based_position_selection_distance` | `double` | no |  |
| `graphics_set` | `SpiderLegGraphicsSet` | yes |  |
| `walking_sound_volume_modifier` | `float` | yes |  |
| `walking_sound_speed_modifier` | `float` | yes |  |
| `upper_leg_dying_trigger_effects` | `array[SpiderLegTriggerEffect]` | yes |  |
| `lower_leg_dying_trigger_effects` | `array[SpiderLegTriggerEffect]` | yes |  |
