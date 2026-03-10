# LogisticRobotPrototype
*typename: `logistic-robot`*
*extends: `RobotWithLogisticInterfacePrototype`*

A [logistic robot](https://wiki.factorio.com/Logistic_robot).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `idle_with_cargo` | `RotatedAnimation` | yes | Only the first frame of the animation is drawn. This means that the graphics for the idle state cannot be animated. |
| `in_motion_with_cargo` | `RotatedAnimation` | yes | Only the first frame of the animation is drawn. This means that the graphics for the in_motion state cannot be animated. |
| `shadow_idle_with_cargo` | `RotatedAnimation` | yes | Only the first frame of the animation is drawn. This means that the graphics for the idle state cannot be animated. |
| `shadow_in_motion_with_cargo` | `RotatedAnimation` | yes | Only the first frame of the animation is drawn. This means that the graphics for the in_motion state cannot be animated. |
| `collision_box` | `BoundingBox` | yes | Must have a collision box size of zero. |
