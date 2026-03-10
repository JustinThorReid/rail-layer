# AnimationPrototype
*typename: `animation`*

Specifies an animation that can be used with
[LuaRendering::draw_animation](runtime:LuaRendering::draw_animation) at runtime.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'animation'` | no |  |
| `name` | `string` | no | Name of the animation. Can be used with [LuaRendering::draw_animation](runtime:LuaRendering::draw_animation) at runtime. |
| `layers` | `array[Animation]` | yes | If this property is present, all Animation definitions have to be placed as entries in the array, and they will all b... |
| `filename` | `FileName` | yes | Only loaded if `layers` is not defined. Mandatory if neither `stripes` nor `filenames` are defined. The path to the s... |
| `priority` | `SpritePriority` | yes | Only loaded if `layers` is not defined. |
| `flags` | `SpriteFlags` | yes | Only loaded if `layers` is not defined. |
| `size` | `SpriteSizeType | (SpriteSizeType, SpriteSizeType)` | yes | Only loaded if `layers` is not defined. The width and height of one frame. If this is a tuple, the first member of th... |
| `width` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Mandatory if `size` is not defined. Width of one frame in pixels, from 0-4096. |
| `height` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Mandatory if `size` is not defined. Height of one frame in pixels, from 0-4096. |
| `x` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Horizontal position of the animation in the source file in pixels. |
| `y` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Vertical position of the animation in the source file in pixels. |
| `position` | `(SpriteSizeType, SpriteSizeType)` | yes | Only loaded if `layers` is not defined. Loaded only when `x` and `y` are both `0`. The first member of the tuple is `... |
| `shift` | `Vector` | yes | Only loaded if `layers` is not defined. The shift in tiles. `util.by_pixel()` can be used to divide the shift by 32 w... |
| `rotate_shift` | `boolean` | yes | Only loaded if `layers` is not defined. |
| `apply_special_effect` | `boolean` | yes | Only loaded if `layers` is not defined. |
| `scale` | `double` | yes | Only loaded if `layers` is not defined. Values other than `1` specify the scale of the sprite on default zoom. A scal... |
| `draw_as_shadow` | `boolean` | yes | Only loaded if `layers` is not defined. Only one of `draw_as_shadow`, `draw_as_glow` and `draw_as_light` can be true.... |
| `draw_as_glow` | `boolean` | yes | Only loaded if `layers` is not defined. Only one of `draw_as_shadow`, `draw_as_glow` and `draw_as_light` can be true.... |
| `draw_as_light` | `boolean` | yes | Only loaded if `layers` is not defined. Only one of `draw_as_shadow`, `draw_as_glow` and `draw_as_light` can be true. |
| `mipmap_count` | `uint8` | yes | Only loaded if `layers` is not defined. Only loaded if this is an icon, that is it has the flag `"group=icon"` or `"g... |
| `apply_runtime_tint` | `boolean` | yes | Only loaded if `layers` is not defined. |
| `tint_as_overlay` | `boolean` | yes | Only loaded if `layers` is not defined. |
| `invert_colors` | `boolean` | yes | Only loaded if `layers` is not defined. |
| `tint` | `Color` | yes | Only loaded if `layers` is not defined. |
| `blend_mode` | `BlendMode` | yes | Only loaded if `layers` is not defined. |
| `load_in_minimal_mode` | `boolean` | yes | Only loaded if `layers` is not defined. Minimal mode is entered when mod loading fails. You are in it when you see th... |
| `premul_alpha` | `boolean` | yes | Only loaded if `layers` is not defined. Whether alpha should be pre-multiplied. |
| `allow_forced_downscale` | `boolean` | yes | Only loaded if `layers` is not defined. If `true`, the sprite may be downsampled to half its size on load even when '... |
| `generate_sdf` | `boolean` | yes | Only loaded if `layers` is not defined. Unused. |
| `surface` | `SpriteUsageSurfaceHint` | yes | Only loaded if `layers` is not defined. Provides hint to sprite atlas system, so it can try to put sprites that are i... |
| `usage` | `SpriteUsageHint` | yes | Only loaded if `layers` is not defined. Provides hint to sprite atlas system, so it can pack sprites that are related... |
| `run_mode` | `AnimationRunMode` | yes | Only loaded if `layers` is not defined. |
| `frame_count` | `uint32` | yes | Only loaded if `layers` is not defined. Can't be `0`. |
| `line_length` | `uint32` | yes | Only loaded if `layers` is not defined. Once the specified number of pictures is loaded, other pictures are loaded on... |
| `animation_speed` | `float` | yes | Only loaded if `layers` is not defined. Modifier of the animation playing speed, the default of `1` means one animati... |
| `max_advance` | `float` | yes | Only loaded if `layers` is not defined. If `layers` are used, `max_advance` of the first layer is used for all layers... |
| `repeat_count` | `uint8` | yes | Only loaded if `layers` is not defined. How many times to repeat the animation to complete an animation cycle. E.g. i... |
| `dice` | `uint8` | yes | Only loaded if `layers` is not defined. |
| `dice_x` | `uint8` | yes | Only loaded if `layers` is not defined. |
| `dice_y` | `uint8` | yes | Only loaded if `layers` is not defined. |
| `frame_sequence` | `AnimationFrameSequence` | yes | Only loaded if `layers` is not defined. |
| `stripes` | `array[Stripe]` | yes | Only loaded if `layers` is not defined. |
| `filenames` | `array[FileName]` | yes | Only loaded if neither `layers` nor `stripes` are defined. |
| `slice` | `uint32` | yes | Only loaded if `layers` is not defined and if `filenames` is defined. |
| `lines_per_file` | `uint32` | yes | Only loaded if `layers` is not defined. Mandatory if `filenames` is defined. |
