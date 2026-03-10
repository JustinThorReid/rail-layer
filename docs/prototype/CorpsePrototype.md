# CorpsePrototype
*typename: `corpse`*
*extends: `EntityPrototype`*

Used for corpses, for example the remnants when destroying buildings.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `dying_speed` | `float` | yes | Multiplier for `time_before_shading_off` and `time_before_removed`. Must be positive. Controls the speed of the anima... |
| `splash_speed` | `float` | yes | Controls the speed of the splash animation: `1 ÷ splash_speed = duration of the splash animation` |
| `time_before_shading_off` | `uint32` | yes | Controls how long the corpse takes to fade, as in how long it takes to get from no transparency to full transparency/... |
| `time_before_removed` | `uint32` | yes | Time in ticks this corpse lasts. May not be 0. |
| `expires` | `boolean` | yes |  |
| `protected_from_tile_building` | `boolean` | yes |  |
| `remove_on_entity_placement` | `boolean` | yes |  |
| `remove_on_tile_placement` | `boolean` | yes |  |
| `auto_setup_collision_box` | `boolean` | yes | If true, and the collision box is unset, this will take the collision box of the first entity that uses this corpse. |
| `final_render_layer` | `RenderLayer` | yes |  |
| `ground_patch_render_layer` | `RenderLayer` | yes |  |
| `animation_render_layer` | `RenderLayer` | yes |  |
| `splash_render_layer` | `RenderLayer` | yes |  |
| `animation_overlay_render_layer` | `RenderLayer` | yes |  |
| `animation_overlay_final_render_layer` | `RenderLayer` | yes |  |
| `shuffle_directions_at_frame` | `uint8` | yes | Defines after which frame in the `animation` the `direction_shuffle` should be applied. Can be set to `0`, frames are... |
| `use_tile_color_for_ground_patch_tint` | `boolean` | yes |  |
| `use_decay_layer` | `boolean` | yes |  |
| `underwater_layer_offset` | `int8` | yes |  |
| `ground_patch_fade_in_delay` | `float` | yes |  |
| `ground_patch_fade_in_speed` | `float` | yes |  |
| `ground_patch_fade_out_start` | `float` | yes |  |
| `decay_frame_transition_duration` | `float` | yes |  |
| `animation` | `RotatedAnimationVariations` | yes | The dying animation. |
| `animation_overlay` | `RotatedAnimationVariations` | yes | Variation count must be the same as `animation` variation count. Direction count must be the same as `animation` dire... |
| `decay_animation` | `RotatedAnimationVariations` | yes |  |
| `splash` | `AnimationVariations` | yes |  |
| `ground_patch` | `AnimationVariations` | yes |  |
| `ground_patch_higher` | `AnimationVariations` | yes |  |
| `ground_patch_decay` | `AnimationVariations` | yes |  |
| `underwater_patch` | `RotatedSprite` | yes |  |
| `ground_patch_fade_out_duration` | `float` | yes |  |
| `direction_shuffle` | `array[array[uint16]]` | yes | May not be an empty array. May not be used if there is no `animation` defined. The inner arrays are called "groups" a... |
