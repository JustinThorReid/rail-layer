# LuaStyle

Style of a GUI element. All of the attributes listed here may be `nil` if not available for a
particular GUI element.

## Attributes

### `gui` — `LuaGui` (read-only)

Gui of the [LuaGuiElement](runtime:LuaGuiElement) of this style.

### `name` — `string` (read-only)

Name of this style.

### `minimal_width` — `int32`

Minimal width ensures, that the widget will never be smaller than than that size. It can't be
squashed to be smaller.

### `maximal_width` — `int32`

Maximal width ensures, that the widget will never be bigger than than that size. It can't be
stretched to be bigger.

### `minimal_height` — `int32`

Minimal height ensures, that the widget will never be smaller than than that size. It can't be
squashed to be smaller.

### `maximal_height` — `int32`

Maximal height ensures, that the widget will never be bigger than than that size. It can't be
stretched to be bigger.

### `natural_width` — `int32`

Natural width specifies the width of the element tries to have, but it can still be
squashed/stretched to have a smaller or bigger size.

### `natural_height` — `int32`

Natural height specifies the height of the element tries to have, but it can still be
squashed/stretched to have a smaller or bigger size.

### `top_padding` — `int32`

### `right_padding` — `int32`

### `bottom_padding` — `int32`

### `left_padding` — `int32`

### `top_margin` — `int32`

### `right_margin` — `int32`

### `bottom_margin` — `int32`

### `left_margin` — `int32`

### `horizontal_align` — `'left' | 'center' | 'right'` *(optional)*

Horizontal align of the inner content of the widget, if any.

### `vertical_align` — `'top' | 'center' | 'bottom'` *(optional)*

Vertical align of the inner content of the widget, if any.

### `font_color` — `Color`

### `font` — `string`

### `top_cell_padding` — `int32`

Space between the table cell contents top and border.

### `right_cell_padding` — `int32`

Space between the table cell contents right and border.

### `bottom_cell_padding` — `int32`

Space between the table cell contents bottom and border.

### `left_cell_padding` — `int32`

Space between the table cell contents left and border.

### `horizontally_stretchable` — `boolean` *(optional)*

Whether the GUI element stretches its size horizontally to other elements. `nil` if this element
does not support stretching.

### `vertically_stretchable` — `boolean` *(optional)*

Whether the GUI element stretches its size vertically to other elements. `nil` if this element does
not support stretching.

### `horizontally_squashable` — `boolean` *(optional)*

Whether the GUI element can be squashed (by maximal width of some parent element) horizontally.
`nil` if this element does not support squashing.  This is mainly meant to be used for scroll-pane.
The default value is false.

### `vertically_squashable` — `boolean` *(optional)*

Whether the GUI element can be squashed (by maximal height of some parent element) vertically. `nil`
if this element does not support squashing.  This is mainly meant to be used for scroll-pane. The
default (parent) value for scroll pane is true, false otherwise.

### `rich_text_setting` — `defines.rich_text_setting`

How this GUI element handles rich text.

### `hovered_font_color` — `Color`

### `clicked_font_color` — `Color`

### `disabled_font_color` — `Color`

### `pie_progress_color` — `Color`

### `clicked_vertical_offset` — `int32`

### `selected_font_color` — `Color`

### `selected_hovered_font_color` — `Color`

### `selected_clicked_font_color` — `Color`

### `strikethrough_color` — `Color`

### `draw_grayscale_picture` — `boolean`

### `horizontal_spacing` — `int32`

Horizontal space between individual cells.

### `vertical_spacing` — `int32`

Vertical space between individual cells.

### `use_header_filler` — `boolean`

### `bar_width` — `uint32`

The thickness of the bar, not the horizontal width.

### `color` — `Color`

### `column_alignments` — `LuaCustomTable` (read-only)

Array containing the alignment for every column of this table element. Even though this property is
marked as read-only, the alignment can be changed by indexing the LuaCustomTable, like so:

### `single_line` — `boolean`

### `extra_top_padding_when_activated` — `int32`

### `extra_bottom_padding_when_activated` — `int32`

### `extra_left_padding_when_activated` — `int32`

### `extra_right_padding_when_activated` — `int32`

### `extra_top_margin_when_activated` — `int32`

### `extra_bottom_margin_when_activated` — `int32`

### `extra_left_margin_when_activated` — `int32`

### `extra_right_margin_when_activated` — `int32`

### `extra_padding_when_activated` — `?` (read) / `int32 | array[int32]` (write)

Sets `extra_top/right/bottom/left_padding_when_activated` to this value.  An array with two values
sets top/bottom padding to the first value and left/right padding to the second value. An array with
four values sets top, right, bottom, left padding respectively.

### `extra_margin_when_activated` — `?` (read) / `int32 | array[int32]` (write)

Sets `extra_top/right/bottom/left_margin_when_activated` to this value.  An array with two values
sets top/bottom margin to the first value and left/right margin to the second value. An array with
four values sets top, right, bottom, left margin respectively.

### `stretch_image_to_widget_size` — `boolean`

### `badge_font` — `string`

### `badge_horizontal_spacing` — `int32`

### `default_badge_font_color` — `Color`

### `selected_badge_font_color` — `Color`

### `disabled_badge_font_color` — `Color`

### `width` — `?` (read) / `int32` (write)

Sets both minimal and maximal width to the given value.

### `height` — `?` (read) / `int32` (write)

Sets both minimal and maximal height to the given value.

### `size` — `?` (read) / `int32 | array[int32]` (write)

Sets both width and height to the given value. Also accepts an array with two values, setting width
to the first and height to the second one.

### `padding` — `?` (read) / `int32 | array[int32]` (write)

Sets top/right/bottom/left paddings to this value.  An array with two values sets top/bottom padding
to the first value and left/right padding to the second value. An array with four values sets top,
right, bottom, left padding respectively.

### `margin` — `?` (read) / `int32 | array[int32]` (write)

Sets top/right/bottom/left margins to this value.  An array with two values sets top/bottom margin
to the first value and left/right margin to the second value. An array with four values sets top,
right, bottom, left margin respectively.

### `cell_padding` — `?` (read) / `int32` (write)

Space between the table cell contents and border. Sets top/right/bottom/left cell paddings to this
value.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
