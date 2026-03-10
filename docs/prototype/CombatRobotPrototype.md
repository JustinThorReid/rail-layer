# CombatRobotPrototype
*typename: `combat-robot`*
*extends: `FlyingRobotPrototype`*

A combat robot. Can attack enemies.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `time_to_live` | `uint32` | no |  |
| `attack_parameters` | `AttackParameters` | no |  |
| `idle` | `RotatedAnimation` | yes |  |
| `shadow_idle` | `RotatedAnimation` | yes |  |
| `in_motion` | `RotatedAnimation` | yes |  |
| `shadow_in_motion` | `RotatedAnimation` | yes |  |
| `range_from_player` | `double` | yes |  |
| `friction` | `double` | yes |  |
| `destroy_action` | `Trigger` | yes | Applied when the combat robot expires (runs out of `time_to_live`). |
| `follows_player` | `boolean` | yes |  |
| `light` | `LightDefinition` | yes |  |
