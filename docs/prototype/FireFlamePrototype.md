# FireFlamePrototype
*typename: `fire`*
*extends: `EntityPrototype`*

A fire.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `damage_per_tick` | `DamageParameters` | no |  |
| `spread_delay` | `uint32` | no |  |
| `spread_delay_deviation` | `uint32` | no |  |
| `render_layer` | `RenderLayer` | yes |  |
| `initial_render_layer` | `RenderLayer` | yes |  |
| `secondary_render_layer` | `RenderLayer` | yes |  |
| `small_tree_fire_pictures` | `AnimationVariations` | yes |  |
| `pictures` | `AnimationVariations` | yes |  |
| `smoke_source_pictures` | `AnimationVariations` | yes |  |
| `secondary_pictures` | `AnimationVariations` | yes |  |
| `burnt_patch_pictures` | `SpriteVariations` | yes |  |
| `secondary_picture_fade_out_start` | `uint32` | yes |  |
| `secondary_picture_fade_out_duration` | `uint32` | yes |  |
| `spawn_entity` | `EntityID` | yes |  |
| `smoke` | `array[SmokeSource]` | yes |  |
| `maximum_spread_count` | `uint16` | yes |  |
| `initial_flame_count` | `uint8` | yes | Spawns this many `secondary_pictures` around the entity when it first spawns. It waits `delay_between_initial_flames`... |
| `uses_alternative_behavior` | `boolean` | yes | If `false`, then all animations loop. If `true`, they run once and stay on the final frame. Also changes the behavior... |
| `limit_overlapping_particles` | `boolean` | yes |  |
| `tree_dying_factor` | `float` | yes |  |
| `fade_in_duration` | `uint32` | yes |  |
| `fade_out_duration` | `uint32` | yes |  |
| `initial_lifetime` | `uint32` | yes |  |
| `damage_multiplier_decrease_per_tick` | `float` | yes |  |
| `damage_multiplier_increase_per_added_fuel` | `float` | yes |  |
| `maximum_damage_multiplier` | `float` | yes |  |
| `lifetime_increase_by` | `uint32` | yes |  |
| `lifetime_increase_cooldown` | `uint32` | yes |  |
| `maximum_lifetime` | `uint32` | yes |  |
| `add_fuel_cooldown` | `uint32` | yes |  |
| `delay_between_initial_flames` | `uint32` | yes |  |
| `smoke_fade_in_duration` | `uint32` | yes |  |
| `smoke_fade_out_duration` | `uint32` | yes |  |
| `on_fuel_added_action` | `Trigger` | yes |  |
| `on_damage_tick_effect` | `Trigger` | yes |  |
| `light` | `LightDefinition` | yes |  |
| `light_size_modifier_per_flame` | `float` | yes |  |
| `light_size_modifier_maximum` | `float` | yes |  |
| `particle_alpha_blend_duration` | `uint16` | yes |  |
| `burnt_patch_lifetime` | `uint32` | yes |  |
| `burnt_patch_alpha_default` | `float` | yes |  |
| `particle_alpha` | `float` | yes | Only loaded if `uses_alternative_behavior` is true. |
| `particle_alpha_deviation` | `float` | yes | Only loaded if `uses_alternative_behavior` is true. |
| `flame_alpha` | `float` | yes | Only loaded if `uses_alternative_behavior` is false. |
| `flame_alpha_deviation` | `float` | yes | Only loaded if `uses_alternative_behavior` is false. |
| `burnt_patch_alpha_variations` | `array[TileAndAlpha]` | yes |  |
