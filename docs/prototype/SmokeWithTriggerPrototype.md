# SmokeWithTriggerPrototype
*typename: `smoke-with-trigger`*
*extends: `SmokePrototype`*

An entity with animation and a trigger.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `action` | `Trigger` | yes |  |
| `action_cooldown` | `uint32` | yes | 0 means never apply. |
| `particle_count` | `uint8` | yes |  |
| `particle_distance_scale_factor` | `float` | yes |  |
| `spread_duration_variation` | `uint32` | yes |  |
| `particle_duration_variation` | `uint32` | yes |  |
| `particle_spread` | `Vector` | yes |  |
| `particle_scale_factor` | `Vector` | yes |  |
| `wave_distance` | `Vector` | yes |  |
| `wave_speed` | `Vector` | yes |  |
| `attach_to_target` | `boolean` | yes | If true, causes the smoke to move with the target entity if one is specified. |
| `fade_when_attachment_is_destroyed` | `boolean` | yes | If true, the smoke will immediately start fading away when the entity it is attached to is destroyed. If it was never... |
