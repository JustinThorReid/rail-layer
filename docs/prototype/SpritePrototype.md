# SpritePrototype
*typename: `sprite`*

Specifies an image that can be used with [SpritePath](runtime:SpritePath) at runtime.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'sprite'` | no |  |
| `name` | `string` | no | Name of the sprite. Can be used as a [SpritePath](runtime:SpritePath) at runtime. |
| `layers` | `array[Sprite]` | yes | If this property is present, all Sprite definitions have to be placed as entries in the array, and they will all be l... |
| `filename` | `FileName` | yes | Only loaded, and mandatory if `layers` is not defined. The path to the sprite file to use. |
| `dice` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Number of slices this is sliced into when using the "optimized atlas packing"... |
| `dice_x` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Same as `dice` above, but this specifies only how many slices there are on th... |
| `dice_y` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Same as `dice` above, but this specifies only how many slices there are on th... |
| `priority` | `SpritePriority` | yes | Only loaded if `layers` is not defined. |
| `flags` | `SpriteFlags` | yes | Only loaded if `layers` is not defined. |
| `size` | `SpriteSizeType | (SpriteSizeType, SpriteSizeType)` | yes | Only loaded if `layers` is not defined. The width and height of the sprite. If this is a tuple, the first member of t... |
| `width` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Mandatory if `size` is not defined. Width of the picture in pixels, from 0-4096. |
| `height` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Mandatory if `size` is not defined. Height of the picture in pixels, from 0-4... |
| `x` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Horizontal position of the sprite in the source file in pixels. |
| `y` | `SpriteSizeType` | yes | Only loaded if `layers` is not defined. Vertical position of the sprite in the source file in pixels. |
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
