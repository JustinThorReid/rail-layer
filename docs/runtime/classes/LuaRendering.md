# LuaRendering

Allows rendering of geometric shapes, text and sprites in the game world through the global object
named `rendering`. Each render object is identified by an id that is universally unique for the
lifetime of a whole game.  If an entity target of an object is destroyed or changes surface, then
the object is also destroyed.

## Attributes

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

## Methods

### `draw_line(color: Color, width: float, ?gap_length: double, ?dash_length: double, ?dash_offset: double, from: ScriptRenderTarget, to: ScriptRenderTarget, surface: SurfaceIdentification, ?time_to_live: uint32, ?blink_interval: uint16, ?forces: ForceSet, ?players: array[PlayerIdentification], ?visible: boolean, ?draw_on_ground: boolean, ?only_in_alt_mode: boolean, ?render_mode: ScriptRenderMode) -> LuaRenderObject`

Create a line.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `color` | `Color` | no |  |
| `width` | `float` | no | In pixels (32 per tile). |
| `gap_length` | `double` | yes | Length of the gaps that this line has, in tiles. Default is 0. |
| `dash_length` | `double` | yes | Length of the dashes that this line has. Used only if gap_length > 0. Default is 0. |
| `dash_offset` | `double` | yes | Starting offset to apply to dashes. Cannot be greater than dash_length + gap_length. Default is 0. |
| `from` | `ScriptRenderTarget` | no |  |
| `to` | `ScriptRenderTarget` | no |  |
| `surface` | `SurfaceIdentification` | no |  |
| `time_to_live` | `uint32` | yes | In ticks. Defaults to living forever. |
| `blink_interval` | `uint16` | yes | In ticks. Defaults to 0 (no blinking). Game alerts use 30. |
| `forces` | `ForceSet` | yes | The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces. |
| `players` | `array[PlayerIdentification]` | yes | The players that this object is rendered to. Passing `nil` or an empty table will render it to all players. |
| `visible` | `boolean` | yes | If this is rendered to anyone at all. Defaults to true. |
| `draw_on_ground` | `boolean` | yes | If this should be drawn below sprites and entities. Defaults to false. |
| `only_in_alt_mode` | `boolean` | yes | If this should only be rendered in alt mode. Defaults to false. |
| `render_mode` | `ScriptRenderMode` | yes | Mode which this object should render in. Defaults to "game". |

**Returns:**

- `LuaRenderObject` — 

### `draw_text(text: LocalisedString, surface: SurfaceIdentification, target: ScriptRenderTarget, color: Color, ?scale: double, ?font: string, ?time_to_live: uint32, ?blink_interval: uint16, ?forces: ForceSet, ?players: array[PlayerIdentification], ?visible: boolean, ?draw_on_ground: boolean, ?orientation: RealOrientation, ?alignment: TextAlign, ?vertical_alignment: VerticalTextAlign, ?scale_with_zoom: boolean, ?only_in_alt_mode: boolean, ?render_mode: ScriptRenderMode, ?use_rich_text: boolean) -> LuaRenderObject`

Create a text.  Not all fonts support scaling.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `text` | `LocalisedString` | no | The text to display. |
| `surface` | `SurfaceIdentification` | no |  |
| `target` | `ScriptRenderTarget` | no |  |
| `color` | `Color` | no |  |
| `scale` | `double` | yes |  |
| `font` | `string` | yes | Name of font to use. Defaults to the same font as flying-text. |
| `time_to_live` | `uint32` | yes | In ticks. Defaults to living forever. |
| `blink_interval` | `uint16` | yes | In ticks. Defaults to 0 (no blinking). Game alerts use 30. |
| `forces` | `ForceSet` | yes | The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces. |
| `players` | `array[PlayerIdentification]` | yes | The players that this object is rendered to. Passing `nil` or an empty table will render it to all players. |
| `visible` | `boolean` | yes | If this is rendered to anyone at all. Defaults to true. |
| `draw_on_ground` | `boolean` | yes | If this should be drawn below sprites and entities. Rich text does not support this option. Defaults to false. |
| `orientation` | `RealOrientation` | yes | The orientation of the text. Default is 0. |
| `alignment` | `TextAlign` | yes | Defaults to "left". |
| `vertical_alignment` | `VerticalTextAlign` | yes | Defaults to "top". |
| `scale_with_zoom` | `boolean` | yes | Defaults to false. If true, the text scales with player zoom, resulting in it always being the same size on screen, a... |
| `only_in_alt_mode` | `boolean` | yes | If this should only be rendered in alt mode. Defaults to false. |
| `render_mode` | `ScriptRenderMode` | yes | Mode which this object should render in. Defaults to "game". |
| `use_rich_text` | `boolean` | yes | If rich text rendering is enabled. Defaults to false. |

**Returns:**

- `LuaRenderObject` — 

### `draw_circle(color: Color, radius: double, ?width: float, ?filled: boolean, target: ScriptRenderTarget, surface: SurfaceIdentification, ?time_to_live: uint32, ?blink_interval: uint16, ?forces: ForceSet, ?players: array[PlayerIdentification], ?visible: boolean, ?draw_on_ground: boolean, ?only_in_alt_mode: boolean, ?render_mode: ScriptRenderMode) -> LuaRenderObject`

Create a circle.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `color` | `Color` | no |  |
| `radius` | `double` | no | In tiles. |
| `width` | `float` | yes | Width of the outline, used only if filled = false. Value is in pixels (32 per tile). Defaults to 1. |
| `filled` | `boolean` | yes | If the circle should be filled. Defaults to false. |
| `target` | `ScriptRenderTarget` | no |  |
| `surface` | `SurfaceIdentification` | no |  |
| `time_to_live` | `uint32` | yes | In ticks. Defaults to living forever. |
| `blink_interval` | `uint16` | yes | In ticks. Defaults to 0 (no blinking). Game alerts use 30. |
| `forces` | `ForceSet` | yes | The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces. |
| `players` | `array[PlayerIdentification]` | yes | The players that this object is rendered to. Passing `nil` or an empty table will render it to all players. |
| `visible` | `boolean` | yes | If this is rendered to anyone at all. Defaults to true. |
| `draw_on_ground` | `boolean` | yes | If this should be drawn below sprites and entities. Defaults to false. |
| `only_in_alt_mode` | `boolean` | yes | If this should only be rendered in alt mode. Defaults to false. |
| `render_mode` | `ScriptRenderMode` | yes | Mode which this object should render in. Defaults to "game". |

**Returns:**

- `LuaRenderObject` — 

### `draw_rectangle(color: Color, ?width: float, ?filled: boolean, left_top: ScriptRenderTarget, right_bottom: ScriptRenderTarget, surface: SurfaceIdentification, ?time_to_live: uint32, ?blink_interval: uint16, ?forces: ForceSet, ?players: array[PlayerIdentification], ?visible: boolean, ?draw_on_ground: boolean, ?only_in_alt_mode: boolean, ?render_mode: ScriptRenderMode) -> LuaRenderObject`

Create a rectangle.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `color` | `Color` | no |  |
| `width` | `float` | yes | Width of the outline, used only if filled = false. Value is in pixels (32 per tile). Defaults to 1. |
| `filled` | `boolean` | yes | If the rectangle should be filled. Defaults to false. |
| `left_top` | `ScriptRenderTarget` | no |  |
| `right_bottom` | `ScriptRenderTarget` | no |  |
| `surface` | `SurfaceIdentification` | no |  |
| `time_to_live` | `uint32` | yes | In ticks. Defaults to living forever. |
| `blink_interval` | `uint16` | yes | In ticks. Defaults to 0 (no blinking). Game alerts use 30. |
| `forces` | `ForceSet` | yes | The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces. |
| `players` | `array[PlayerIdentification]` | yes | The players that this object is rendered to. Passing `nil` or an empty table will render it to all players. |
| `visible` | `boolean` | yes | If this is rendered to anyone at all. Defaults to true. |
| `draw_on_ground` | `boolean` | yes | If this should be drawn below sprites and entities. Defaults to false. |
| `only_in_alt_mode` | `boolean` | yes | If this should only be rendered in alt mode. Defaults to false. |
| `render_mode` | `ScriptRenderMode` | yes | Mode which this object should render in. Defaults to "game". |

**Returns:**

- `LuaRenderObject` — 

### `draw_arc(color: Color, max_radius: double, min_radius: double, start_angle: float, angle: float, target: ScriptRenderTarget, surface: SurfaceIdentification, ?time_to_live: uint32, ?blink_interval: uint16, ?forces: ForceSet, ?players: array[PlayerIdentification], ?visible: boolean, ?draw_on_ground: boolean, ?only_in_alt_mode: boolean, ?render_mode: ScriptRenderMode) -> LuaRenderObject`

Create an arc.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `color` | `Color` | no |  |
| `max_radius` | `double` | no | The radius of the outer edge of the arc, in tiles. |
| `min_radius` | `double` | no | The radius of the inner edge of the arc, in tiles. |
| `start_angle` | `float` | no | Where the arc starts, in radian. |
| `angle` | `float` | no | The angle of the arc, in radian. |
| `target` | `ScriptRenderTarget` | no |  |
| `surface` | `SurfaceIdentification` | no |  |
| `time_to_live` | `uint32` | yes | In ticks. Defaults to living forever. |
| `blink_interval` | `uint16` | yes | In ticks. Defaults to 0 (no blinking). Game alerts use 30. |
| `forces` | `ForceSet` | yes | The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces. |
| `players` | `array[PlayerIdentification]` | yes | The players that this object is rendered to. Passing `nil` or an empty table will render it to all players. |
| `visible` | `boolean` | yes | If this is rendered to anyone at all. Defaults to true. |
| `draw_on_ground` | `boolean` | yes | If this should be drawn below sprites and entities. Defaults to false. |
| `only_in_alt_mode` | `boolean` | yes | If this should only be rendered in alt mode. Defaults to false. |
| `render_mode` | `ScriptRenderMode` | yes | Mode which this object should render in. Defaults to "game". |

**Returns:**

- `LuaRenderObject` — 

### `draw_polygon(color: Color, vertices: array[ScriptRenderTarget], ?target: ScriptRenderTarget, ?orientation: RealOrientation, ?orientation_target: ScriptRenderTarget, ?use_target_orientation: boolean, surface: SurfaceIdentification, ?time_to_live: uint32, ?blink_interval: uint16, ?forces: ForceSet, ?players: array[PlayerIdentification], ?visible: boolean, ?draw_on_ground: boolean, ?only_in_alt_mode: boolean, ?render_mode: ScriptRenderMode) -> LuaRenderObject`

Create a triangle mesh defined by a triangle strip.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `color` | `Color` | no |  |
| `vertices` | `array[ScriptRenderTarget]` | no |  |
| `target` | `ScriptRenderTarget` | yes | Acts like an offset applied to all vertices that are not set to an entity. |
| `orientation` | `RealOrientation` | yes | The orientation applied to all vertices. Default is 0. |
| `orientation_target` | `ScriptRenderTarget` | yes | If given, the vertices (that are not set to an entity) rotate so that it faces this target. Note that `orientation` i... |
| `use_target_orientation` | `boolean` | yes | Only used if `orientation_target` is a LuaEntity. |
| `surface` | `SurfaceIdentification` | no |  |
| `time_to_live` | `uint32` | yes | In ticks. Defaults to living forever. |
| `blink_interval` | `uint16` | yes | In ticks. Defaults to 0 (no blinking). Game alerts use 30. |
| `forces` | `ForceSet` | yes | The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces. |
| `players` | `array[PlayerIdentification]` | yes | The players that this object is rendered to. Passing `nil` or an empty table will render it to all players. |
| `visible` | `boolean` | yes | If this is rendered to anyone at all. Defaults to true. |
| `draw_on_ground` | `boolean` | yes | If this should be drawn below sprites and entities. Defaults to false. |
| `only_in_alt_mode` | `boolean` | yes | If this should only be rendered in alt mode. Defaults to false. |
| `render_mode` | `ScriptRenderMode` | yes | Mode which this object should render in. Defaults to "game". |

**Returns:**

- `LuaRenderObject` — 

### `draw_sprite(sprite: SpritePath, ?orientation: RealOrientation, ?x_scale: double, ?y_scale: double, ?tint: Color, ?render_layer: RenderLayer, ?orientation_target: ScriptRenderTarget, ?use_target_orientation: boolean, ?oriented_offset: Vector, target: ScriptRenderTarget, surface: SurfaceIdentification, ?time_to_live: uint32, ?blink_interval: uint16, ?forces: ForceSet, ?players: array[PlayerIdentification], ?visible: boolean, ?only_in_alt_mode: boolean, ?render_mode: ScriptRenderMode) -> LuaRenderObject`

Create a sprite.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sprite` | `SpritePath` | no |  |
| `orientation` | `RealOrientation` | yes | The orientation of the sprite. Default is 0. |
| `x_scale` | `double` | yes | Horizontal scale of the sprite. Default is 1. |
| `y_scale` | `double` | yes | Vertical scale of the sprite. Default is 1. |
| `tint` | `Color` | yes |  |
| `render_layer` | `RenderLayer` | yes | Render layer of the sprite. Defaults to `"arrow"`. |
| `orientation_target` | `ScriptRenderTarget` | yes | If given, the sprite rotates so that it faces this target. Note that `orientation` is still applied to the sprite. |
| `use_target_orientation` | `boolean` | yes | Only used if `orientation_target` is a LuaEntity. |
| `oriented_offset` | `Vector` | yes | Offsets the center of the sprite if `orientation_target` is given. This offset will rotate together with the sprite. |
| `target` | `ScriptRenderTarget` | no | Center of the sprite. |
| `surface` | `SurfaceIdentification` | no |  |
| `time_to_live` | `uint32` | yes | In ticks. Defaults to living forever. |
| `blink_interval` | `uint16` | yes | In ticks. Defaults to 0 (no blinking). Game alerts use 30. |
| `forces` | `ForceSet` | yes | The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces. |
| `players` | `array[PlayerIdentification]` | yes | The players that this object is rendered to. Passing `nil` or an empty table will render it to all players. |
| `visible` | `boolean` | yes | If this is rendered to anyone at all. Defaults to true. |
| `only_in_alt_mode` | `boolean` | yes | If this should only be rendered in alt mode. Defaults to false. |
| `render_mode` | `ScriptRenderMode` | yes | Mode which this object should render in. Defaults to "game". |

**Returns:**

- `LuaRenderObject` — 

### `draw_light(sprite: SpritePath, ?orientation: RealOrientation, ?scale: float, ?intensity: float, ?minimum_darkness: float, ?oriented: boolean, ?color: Color, target: ScriptRenderTarget, surface: SurfaceIdentification, ?time_to_live: uint32, ?blink_interval: uint16, ?forces: ForceSet, ?players: array[PlayerIdentification], ?visible: boolean, ?only_in_alt_mode: boolean, ?render_mode: ScriptRenderMode) -> LuaRenderObject`

Create a light.  The base game uses the utility sprites `light_medium` and `light_small` for lights.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sprite` | `SpritePath` | no |  |
| `orientation` | `RealOrientation` | yes | The orientation of the light. Default is 0. |
| `scale` | `float` | yes | Default is 1. |
| `intensity` | `float` | yes | Default is 1. |
| `minimum_darkness` | `float` | yes | The minimum darkness at which this light is rendered. Default is 0. |
| `oriented` | `boolean` | yes | If this light has the same orientation as the entity target, default is false. Note that `orientation` is still appli... |
| `color` | `Color` | yes | Defaults to white (no tint). |
| `target` | `ScriptRenderTarget` | no | Center of the light. |
| `surface` | `SurfaceIdentification` | no |  |
| `time_to_live` | `uint32` | yes | In ticks. Defaults to living forever. |
| `blink_interval` | `uint16` | yes | In ticks. Defaults to 0 (no blinking). Game alerts use 30. |
| `forces` | `ForceSet` | yes | The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces. |
| `players` | `array[PlayerIdentification]` | yes | The players that this object is rendered to. Passing `nil` or an empty table will render it to all players. |
| `visible` | `boolean` | yes | If this is rendered to anyone at all. Defaults to true. |
| `only_in_alt_mode` | `boolean` | yes | If this should only be rendered in alt mode. Defaults to false. |
| `render_mode` | `ScriptRenderMode` | yes | Mode which this object should render in. Defaults to "game". |

**Returns:**

- `LuaRenderObject` — 

### `draw_animation(animation: string, ?orientation: RealOrientation, ?x_scale: double, ?y_scale: double, ?tint: Color, ?render_layer: RenderLayer, ?animation_speed: double, ?animation_offset: double, ?orientation_target: ScriptRenderTarget, ?use_target_orientation: boolean, ?oriented_offset: Vector, target: ScriptRenderTarget, surface: SurfaceIdentification, ?time_to_live: uint32, ?blink_interval: uint16, ?forces: ForceSet, ?players: array[PlayerIdentification], ?visible: boolean, ?only_in_alt_mode: boolean, ?render_mode: ScriptRenderMode) -> LuaRenderObject`

Create an animation.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `animation` | `string` | no | Name of an [AnimationPrototype](prototype:AnimationPrototype). |
| `orientation` | `RealOrientation` | yes | The orientation of the animation. Default is 0. |
| `x_scale` | `double` | yes | Horizontal scale of the animation. Default is 1. |
| `y_scale` | `double` | yes | Vertical scale of the animation. Default is 1. |
| `tint` | `Color` | yes |  |
| `render_layer` | `RenderLayer` | yes | Render layer of the animation. Defaults to `"arrow"`. |
| `animation_speed` | `double` | yes | How many frames the animation goes forward per tick. Default is 1. |
| `animation_offset` | `double` | yes | Offset of the animation in frames. Default is 0. |
| `orientation_target` | `ScriptRenderTarget` | yes | If given, the animation rotates so that it faces this target. Note that `orientation` is still applied to the animation. |
| `use_target_orientation` | `boolean` | yes | Only used if `orientation_target` is a LuaEntity. |
| `oriented_offset` | `Vector` | yes | Offsets the center of the animation if `orientation_target` is given. This offset will rotate together with the anima... |
| `target` | `ScriptRenderTarget` | no | Center of the animation. |
| `surface` | `SurfaceIdentification` | no |  |
| `time_to_live` | `uint32` | yes | In ticks. Defaults to living forever. |
| `blink_interval` | `uint16` | yes | In ticks. Defaults to 0 (no blinking). Game alerts use 30. |
| `forces` | `ForceSet` | yes | The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces. |
| `players` | `array[PlayerIdentification]` | yes | The players that this object is rendered to. Passing `nil` or an empty table will render it to all players. |
| `visible` | `boolean` | yes | If this is rendered to anyone at all. Defaults to true. |
| `only_in_alt_mode` | `boolean` | yes | If this should only be rendered in alt mode. Defaults to false. |
| `render_mode` | `ScriptRenderMode` | yes | Mode which this object should render in. Defaults to "game". |

**Returns:**

- `LuaRenderObject` — 

### `get_all_objects(?mod_name: string) -> array[LuaRenderObject]`

Gets an array of all valid objects.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `mod_name` | `string` | yes | If provided, get only the render objects created by this mod. An empty string (`""`) refers to all objects not belong... |

**Returns:**

- `array[LuaRenderObject]` — 

### `clear(?mod_name: string)`

Destroys all render objects.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `mod_name` | `string` | yes | If provided, only the render objects created by this mod are destroyed. An empty string (`""`) refers to all objects ... |

### `get_object_by_id(object_id: uint64) -> LuaRenderObject`

Gives LuaRenderObject for given object ID. May return nil if object does not exist or is invalid.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `object_id` | `uint64` | no |  |

**Returns:**

- `LuaRenderObject` — 
