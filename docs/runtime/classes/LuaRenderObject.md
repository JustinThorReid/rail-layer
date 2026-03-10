# LuaRenderObject

Reference to a single [LuaRendering](runtime:LuaRendering) object.

## Attributes

### `id` — `uint64` (read-only)

Unique identifier of this render object.

### `type` — `'text' | 'line' | 'circle' | 'rectangle' | 'arc' | 'polygon' | 'sprite' | 'light' | 'animation'` (read-only)

Type of this object.

### `surface` — `LuaSurface` (read-only)

Surface this object is rendered on.

### `time_to_live` — `uint32`

Time to live of this object. This will be 0 if the object does not expire.

### `blink_interval` — `uint16`

Blink interval of this object based on the internal "update tick". When zero, blinking is disabled.
For other values, the object will be visible the given number of ticks and then invisible for the
same duration. Objects with the same blink interval will blink synchronously. Blink interval of game
alerts is 30.  For example, when the interval is 60, the object is visible for 60 ticks and hidden
for the next 60.

### `forces` — `array[LuaForce]` (read) / `ForceSet` (write) *(optional)*

Forces for which this object is rendered or `nil` if visible to all forces. Writing `nil` or empty
array will make this object visible to all forces.

### `players` — `array[LuaPlayer] | array[PlayerIdentification]` *(optional)*

Players for which this object is visible or `nil` if visible to all players. Writing `nil` or empty
array will make this object visible to all players.

### `visible` — `boolean`

If this object is rendered to anyone at all.

### `draw_on_ground` — `boolean`

If this object is being drawn on the ground, under most entities and sprites.  In
[render_mode](runtime:LuaRenderObject::render_mode) == "chart", this value is unused.

### `only_in_alt_mode` — `boolean`

If this object is only rendered in alt-mode.

### `render_mode` — `ScriptRenderMode`

Whether the object is rendered in game world or on the chart (map view).  When it is changed, the
object is pushed to front of its new group.

### `use_target_orientation` — `boolean`

If this object uses the target orientation.

### `color` — `Color`

Color or tint of the object.

### `width` — `float`

Width of the object. Value is in pixels (32 per tile).

### `from` — `ScriptRenderTarget`

Where this line is drawn from.

### `to` — `ScriptRenderTarget`

Where this line is drawn to.

### `dash_length` — `double`

Dash length of this line.

### `gap_length` — `double`

Length of the gaps in this line.

### `dash_offset` — `double`

Starting offset to apply to dashes of this line. Cannot be greater than dash_length + gap_length.

### `target` — `ScriptRenderTarget`

Where this object is drawn.  Polygon vertices that are set to an entity will ignore this.

### `orientation` — `RealOrientation`

Orientation of this object.  Polygon vertices that are set to an entity will ignore this.

### `scale` — `double`

Scale of the text or light.

### `text` — `LocalisedString`

Text that is displayed by this text object.

### `font` — `string`

Font of this text.

### `alignment` — `TextAlign`

Alignment of this text.

### `vertical_alignment` — `VerticalTextAlign`

Vertical alignment of this text.

### `scale_with_zoom` — `boolean`

If this text scales with player zoom.

### `use_rich_text` — `boolean`

If this text parses rich text tags.

### `filled` — `boolean`

If this circle or rectangle is filled.

### `radius` — `double`

Radius of this circle.

### `left_top` — `ScriptRenderTarget`

Where top left corner of this rectangle is drawn.

### `right_bottom` — `ScriptRenderTarget`

Where bottom right corner of this rectangle is drawn.

### `max_radius` — `double`

Radius of the outer edge of this arc.

### `min_radius` — `double`

Radius of the inner edge of this arc.

### `start_angle` — `float`

Where this arc starts. Angle in radian.

### `angle` — `float`

Angle of this arc. Angle in radian.

### `vertices` — `array[ScriptRenderTarget]`

Vertices of this polygon.

### `sprite` — `SpritePath`

Sprite of the sprite or light.

### `x_scale` — `double`

Horizontal scale of this sprite or animation.

### `y_scale` — `double`

Vertical scale of this sprite or animation.

### `render_layer` — `RenderLayer`

Render layer of this sprite or animation.

### `orientation_target` — `ScriptRenderTarget` *(optional)*

Target to which this object rotates so that it faces the target. Note that `orientation` is still
applied to the object. Writing `nil` will clear the orientation_target. `nil` if no target.  Polygon
vertices that are set to an entity will ignore this.

### `oriented_offset` — `Vector`

Offsets the center of the sprite or animation if `orientation_target` is given. This offset will
rotate together with the sprite or animation.

### `intensity` — `float`

Intensity of this light.

### `minimum_darkness` — `float`

Minimum darkness at which this light is rendered.

### `oriented` — `boolean`

If this light is rendered with the same orientation as the target entity. Note that `orientation` is
still applied to the sprite.

### `animation` — `string`

Animation prototype name of this animation.

### `animation_speed` — `double`

Animation speed of this animation. Animation speed in frames per tick.

### `animation_offset` — `double`

Animation offset of this animation. Animation offset in frames.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

## Methods

### `destroy()`

Destroys this object. Does not error when the object is invalid.

### `bring_to_front()`

Reorder this object so that it is drawn in front of the already existing objects.

### `move_to_back()`

Reorder this object so that it is drawn in the back of the already existing objects.

### `set_dashes(dash_length: double, gap_length: double)`

Set the length of the dashes and the length of the gaps in this line.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `dash_length` | `double` | no |  |
| `gap_length` | `double` | no |  |

### `set_corners(left_top: ScriptRenderTarget, right_bottom: ScriptRenderTarget)`

Set the corners of the rectangle with this id.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `left_top` | `ScriptRenderTarget` | no |  |
| `right_bottom` | `ScriptRenderTarget` | no |  |
