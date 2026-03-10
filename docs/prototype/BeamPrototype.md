# BeamPrototype
*typename: `beam`*
*extends: `EntityPrototype`*

Used as a laser beam.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `action` | `Trigger` | yes |  |
| `width` | `float` | no |  |
| `damage_interval` | `uint32` | no | Damage interval can't be 0. A value of 1 will cause the attack to be applied each tick. |
| `target_offset` | `Vector` | yes |  |
| `random_target_offset` | `boolean` | yes |  |
| `action_triggered_automatically` | `boolean` | yes | Whether this beams should trigger its action every `damage_interval`. If false, the action is instead triggered when ... |
| `graphics_set` | `BeamGraphicsSet` | no |  |
