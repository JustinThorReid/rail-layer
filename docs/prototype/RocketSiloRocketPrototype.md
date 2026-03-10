# RocketSiloRocketPrototype
*typename: `rocket-silo-rocket`*
*extends: `EntityPrototype`*

The rocket inside the rocket silo.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `shadow_slave_entity` | `EntityID` | yes |  |
| `cargo_pod_entity` | `EntityID` | no | Name of a [CargoPodPrototype](prototype:CargoPodPrototype). |
| `dying_explosion` | `EntityID` | yes |  |
| `glow_light` | `LightDefinition` | yes |  |
| `rocket_sprite` | `Sprite` | yes |  |
| `rocket_shadow_sprite` | `Sprite` | yes |  |
| `rocket_glare_overlay_sprite` | `Sprite` | yes |  |
| `rocket_smoke_bottom1_animation` | `Animation` | yes |  |
| `rocket_smoke_bottom2_animation` | `Animation` | yes |  |
| `rocket_smoke_top1_animation` | `Animation` | yes |  |
| `rocket_smoke_top2_animation` | `Animation` | yes |  |
| `rocket_smoke_top3_animation` | `Animation` | yes |  |
| `rocket_flame_animation` | `Animation` | yes |  |
| `rocket_flame_left_animation` | `Animation` | yes |  |
| `rocket_flame_right_animation` | `Animation` | yes |  |
| `rocket_initial_offset` | `Vector` | yes |  |
| `rocket_rise_offset` | `Vector` | no |  |
| `cargo_attachment_offset` | `Vector` | yes |  |
| `rocket_flame_left_rotation` | `float` | no |  |
| `rocket_flame_right_rotation` | `float` | no |  |
| `rocket_render_layer_switch_distance` | `double` | no |  |
| `full_render_layer_switch_distance` | `double` | no |  |
| `rocket_launch_offset` | `Vector` | no |  |
| `effects_fade_in_start_distance` | `double` | no |  |
| `effects_fade_in_end_distance` | `double` | no |  |
| `shadow_fade_out_start_ratio` | `double` | no |  |
| `shadow_fade_out_end_ratio` | `double` | no |  |
| `rocket_visible_distance_from_center` | `float` | no |  |
| `rocket_above_wires_slice_offset_from_center` | `float` | yes |  |
| `rocket_air_object_slice_offset_from_center` | `float` | yes |  |
| `rocket_fog_mask` | `FogMaskShapeDefinition` | yes |  |
| `rising_speed` | `double` | no |  |
| `engine_starting_speed` | `double` | no |  |
| `flying_speed` | `double` | no |  |
| `flying_acceleration` | `double` | no |  |
| `flying_trigger` | `TriggerEffect` | yes |  |
| `flying_sound` | `Sound` | yes |  |
| `inventory_size` | `ItemStackIndex` | no |  |
