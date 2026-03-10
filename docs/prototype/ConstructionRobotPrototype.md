# ConstructionRobotPrototype
*typename: `construction-robot`*
*extends: `RobotWithLogisticInterfacePrototype`*

A [construction robot](https://wiki.factorio.com/Construction_robot).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `construction_vector` | `Vector` | no |  |
| `working` | `RotatedAnimation` | yes |  |
| `shadow_working` | `RotatedAnimation` | yes |  |
| `smoke` | `Animation` | yes |  |
| `sparks` | `AnimationVariations` | yes |  |
| `repairing_sound` | `Sound` | yes |  |
| `mined_sound_volume_modifier` | `float` | yes |  |
| `working_light` | `LightDefinition` | yes |  |
| `collision_box` | `BoundingBox` | yes | Must have a collision box size of zero. |
