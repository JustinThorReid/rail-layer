# FluidStreamPrototype
*typename: `stream`*
*extends: `EntityPrototype`*

Used for example for the handheld flamethrower.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `particle_spawn_interval` | `uint16` | no | The stream will spawn one particle every `particle_spawn_interval` ticks until the `particle_spawn_timeout` is reache... |
| `particle_horizontal_speed` | `float` | no | Must be larger than 0. `particle_horizontal_speed` has to be greater than `particle_horizontal_speed_deviation`. |
| `particle_horizontal_speed_deviation` | `float` | no |  |
| `particle_vertical_acceleration` | `float` | no |  |
| `initial_action` | `Trigger` | yes | Action that is triggered when the first particle lands. |
| `action` | `Trigger` | yes | Action that is triggered every time a particle lands. Not triggered for the first particle if `initial_action` is non... |
| `special_neutral_target_damage` | `DamageParameters` | yes |  |
| `width` | `float` | yes |  |
| `particle_buffer_size` | `uint32` | yes | Number of spawned child particles of the stream. Must be greater than 0 and less than 256. |
| `particle_spawn_timeout` | `uint16` | yes |  |
| `particle_start_alpha` | `float` | yes |  |
| `particle_end_alpha` | `float` | yes |  |
| `particle_start_scale` | `float` | yes |  |
| `particle_alpha_per_part` | `float` | yes |  |
| `particle_scale_per_part` | `float` | yes |  |
| `particle_fade_out_threshold` | `float` | yes | Value between 0 and 1. |
| `particle_loop_exit_threshold` | `float` | yes | Value between 0 and 1. |
| `particle_loop_frame_count` | `uint16` | yes | Will be set to 1 by the game if less than 1. |
| `particle_fade_out_duration` | `uint16` | yes | Will be set to 1 by the game if less than 1. |
| `spine_animation` | `Animation` | yes |  |
| `particle` | `Animation` | yes |  |
| `shadow` | `Animation` | yes |  |
| `smoke_sources` | `array[SmokeSource]` | yes | Smoke spawning is controlled by `progress_to_create_smoke`. |
| `progress_to_create_smoke` | `float` | yes | The point in the particles projectile arc to start spawning smoke. 0.5 (the default) starts spawning smoke at the hal... |
| `stream_light` | `LightDefinition` | yes |  |
| `ground_light` | `LightDefinition` | yes |  |
| `target_position_deviation` | `double` | yes |  |
| `oriented_particle` | `boolean` | yes |  |
| `shadow_scale_enabled` | `boolean` | yes |  |
| `target_initial_position_only` | `boolean` | yes |  |
