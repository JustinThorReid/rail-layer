# RobotWithLogisticInterfacePrototype
*extends: `FlyingRobotPrototype`*

The common properties of logistic and construction robots represented by an abstract prototype.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `max_payload_size` | `ItemCountType` | no | The robot's cargo carrying capacity. Can be increased by [worker robot cargo size research](prototype:WorkerRobotStor... |
| `max_payload_size_after_bonus` | `ItemCountType` | yes | The robot's maximum possible cargo carrying capacity, including bonuses. Useful to limit the impact of [worker robot ... |
| `idle` | `RotatedAnimation` | yes | Only the first frame of the animation is drawn. This means that the graphics for the idle state cannot be animated. |
| `in_motion` | `RotatedAnimation` | yes | Only the first frame of the animation is drawn. This means that the graphics for the in_motion state cannot be animated. |
| `shadow_idle` | `RotatedAnimation` | yes | Only the first frame of the animation is drawn. This means that the graphics for the idle state cannot be animated. |
| `shadow_in_motion` | `RotatedAnimation` | yes | Only the first frame of the animation is drawn. This means that the graphics for the in_motion state cannot be animated. |
| `destroy_action` | `Trigger` | yes | Applied when the robot expires (runs out of energy and [FlyingRobotPrototype::speed_multiplier_when_out_of_energy](pr... |
| `draw_cargo` | `boolean` | yes |  |
| `charging_sound` | `InterruptibleSound` | yes |  |
