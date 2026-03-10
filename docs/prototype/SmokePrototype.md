# SmokePrototype
*extends: `EntityPrototype`*

Abstract entity that has an animation.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `animation` | `Animation` | yes |  |
| `cyclic` | `boolean` | yes | If this is false then the smoke expires when the animation has played once. |
| `duration` | `uint32` | yes | May not be 0 if `cyclic` is true. If `cyclic` is false then the smoke will be expire when the animation has played on... |
| `spread_duration` | `uint32` | yes |  |
| `fade_away_duration` | `uint32` | yes | `fade_in_duration` + `fade_away_duration` must be <= `duration`. |
| `fade_in_duration` | `uint32` | yes | `fade_in_duration` + `fade_away_duration` must be <= `duration`. |
| `start_scale` | `double` | yes |  |
| `end_scale` | `double` | yes |  |
| `color` | `Color` | yes |  |
| `affected_by_wind` | `boolean` | yes | Smoke always moves randomly unless `movement_slow_down_factor` is 0. If `affected_by_wind` is true, the smoke will al... |
| `show_when_smoke_off` | `boolean` | yes |  |
| `render_layer` | `RenderLayer` | yes |  |
| `movement_slow_down_factor` | `double` | yes | Value between 0 and 1, with 0 being no movement. |
| `glow_fade_away_duration` | `uint32` | yes |  |
| `glow_animation` | `Animation` | yes |  |
| `collision_box` | `BoundingBox` | yes | Must have a collision box size of zero. |
