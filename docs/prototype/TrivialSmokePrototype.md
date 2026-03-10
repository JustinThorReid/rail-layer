# TrivialSmokePrototype
*typename: `trivial-smoke`*
*extends: `Prototype`*

Smoke, but it's not an entity for optimization purposes.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `animation` | `Animation` | no |  |
| `duration` | `uint32` | no | Can't be 0 - the smoke will never render. |
| `glow_animation` | `Animation` | yes |  |
| `color` | `Color` | yes |  |
| `start_scale` | `float` | yes |  |
| `end_scale` | `float` | yes |  |
| `movement_slow_down_factor` | `double` | yes | Value between 0 and 1, with 1 being no slowdown and 0 being no movement. |
| `spread_duration` | `uint32` | yes |  |
| `fade_away_duration` | `uint32` | yes | `fade_in_duration` + `fade_away_duration` must be <= `duration`. |
| `fade_in_duration` | `uint32` | yes | `fade_in_duration` + `fade_away_duration` must be <= `duration`. |
| `glow_fade_away_duration` | `uint32` | yes |  |
| `cyclic` | `boolean` | yes |  |
| `affected_by_wind` | `boolean` | yes | Smoke always moves randomly unless `movement_slow_down_factor` is 0. If `affected_by_wind` is true, the smoke will al... |
| `show_when_smoke_off` | `boolean` | yes |  |
| `render_layer` | `RenderLayer` | yes |  |
