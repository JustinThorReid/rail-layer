# ParticlePrototype
*typename: `optimized-particle`*
*extends: `Prototype`*

An entity with a limited lifetime that can use trigger effects.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `pictures` | `AnimationVariations` | yes | Picture variation count and individual frame count must be equal to shadow variation count. |
| `life_time` | `uint16` | no | Can't be 1. |
| `shadows` | `AnimationVariations` | yes | Shadow variation variation count and individual frame count must be equal to picture variation count. |
| `draw_shadow_when_on_ground` | `boolean` | yes |  |
| `regular_trigger_effect` | `TriggerEffect` | yes |  |
| `ended_in_water_trigger_effect` | `TriggerEffect` | yes |  |
| `ended_on_ground_trigger_effect` | `TriggerEffect` | yes |  |
| `render_layer` | `RenderLayer` | yes |  |
| `render_layer_when_on_ground` | `RenderLayer` | yes |  |
| `regular_trigger_effect_frequency` | `uint32` | yes | Can't be 1. |
| `movement_modifier_when_on_ground` | `float` | yes |  |
| `movement_modifier` | `float` | yes |  |
| `vertical_acceleration` | `float` | yes | Has to be >= -0.01 and <= 0.01. |
| `mining_particle_frame_speed` | `float` | yes |  |
| `fade_away_duration` | `uint16` | yes | Defaults to `life_time` / 5, but at most 60. If this is 0, it is silently changed to 1. |
