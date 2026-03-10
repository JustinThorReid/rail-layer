# ExplosionPrototype
*typename: `explosion`*
*extends: `EntityPrototype`*

Used to play an animation and a sound.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `animations` | `AnimationVariations` | no |  |
| `sound` | `Sound` | yes |  |
| `smoke` | `TrivialSmokeID` | yes | Mandatory if `smoke_count` > 0. |
| `height` | `float` | yes |  |
| `smoke_slow_down_factor` | `float` | yes |  |
| `smoke_count` | `uint16` | yes |  |
| `rotate` | `boolean` | yes |  |
| `beam` | `boolean` | yes |  |
| `correct_rotation` | `boolean` | yes |  |
| `scale_animation_speed` | `boolean` | yes |  |
| `fade_in_duration` | `uint8` | yes |  |
| `fade_out_duration` | `uint8` | yes |  |
| `render_layer` | `RenderLayer` | yes |  |
| `scale_in_duration` | `uint8` | yes |  |
| `scale_out_duration` | `uint8` | yes |  |
| `scale_end` | `float` | yes |  |
| `scale_increment_per_tick` | `float` | yes |  |
| `light_intensity_factor_initial` | `float` | yes | Silently clamped to be between 0 and 1. |
| `light_intensity_factor_final` | `float` | yes | Silently clamped to be between 0 and 1. |
| `light_size_factor_initial` | `float` | yes | Silently clamped to be between 0 and 1. |
| `light_size_factor_final` | `float` | yes | Silently clamped to be between 0 and 1. |
| `light` | `LightDefinition` | yes |  |
| `light_intensity_peak_start_progress` | `float` | yes |  |
| `light_intensity_peak_end_progress` | `float` | yes |  |
| `light_size_peak_start_progress` | `float` | yes |  |
| `light_size_peak_end_progress` | `float` | yes |  |
| `scale_initial` | `float` | yes |  |
| `scale_initial_deviation` | `float` | yes |  |
| `scale` | `float` | yes |  |
| `scale_deviation` | `float` | yes |  |
| `delay` | `MapTick` | yes | Number of ticks to delay the explosion effects by. |
| `delay_deviation` | `MapTick` | yes | The maximum number of ticks to randomly delay the explosion effects by. In addition to the number of ticks defined by... |
| `explosion_effect` | `Trigger` | yes | The effect/trigger that happens when the explosion effect triggers after the initial delay as defined by `delay` and ... |
