# LuaGuiElement

An element of a custom GUI. This type is used to represent [any kind](runtime:GuiElementType) of a
GUI element - labels, buttons and frames are all instances of this type. Just like
[LuaEntity](runtime:LuaEntity), different kinds of elements support different attributes; attempting
to access an attribute on an element that doesn't support it (for instance, trying to access the
`column_count` of a `textfield`) will result in a runtime error.  For information on all supported
GUI elements, see [GuiElementType](runtime:GuiElementType).  Each GUI element allows access to its
children by having them as attributes. Thus, one can use the `parent.child` syntax to refer to
children. Lua also supports the `parent["child"]` syntax to refer to the same element. This can be
used in cases where the child has a name that isn't a valid Lua identifier.

## Attributes

### `index` — `uint32` (read-only)

The index of this GUI element (unique amongst the GUI elements of a LuaPlayer).

### `gui` — `LuaGui` (read-only)

The GUI this element is a child of.

### `parent` — `LuaGuiElement` (read-only) *(optional)*

The direct parent of this element. `nil` if this is a top-level element.

### `name` — `string`

The name of this element. `""` if no name was set.

### `caption` — `LocalisedString`

The text displayed on this element. For frames, this is the "heading". For other elements, like
buttons or labels, this is the content.  Whilst this attribute may be used on all elements without
producing an error, it doesn't make sense for tables and flows as they won't display it.

### `value` — `double`

How much this progress bar is filled. It is a value in the range `[0, 1]`.

### `direction` — `GuiDirection` (read-only)

Direction of this element's layout.

### `style` — `LuaStyle | string`

The style of this element. When read, this evaluates to a [LuaStyle](runtime:LuaStyle). For writing,
it only accepts a string that specifies the textual identifier (prototype name) of the desired
style.

### `visible` — `boolean`

Sets whether this GUI element is visible or completely hidden, taking no space in the layout.

### `text` — `string`

The text contained in this textfield or text-box.

### `children_names` — `array[string]` (read-only)

Names of all the children of this element. These are the identifiers that can be used to access the
child as an attribute of this element.

### `state` — `boolean`

Is this checkbox or radiobutton checked?

### `player_index` — `uint32` (read-only)

Index into [LuaGameScript::players](runtime:LuaGameScript::players) specifying the player who owns
this element.

### `sprite` — `SpritePath`

The sprite to display on this sprite-button or sprite in the default state.

### `resize_to_sprite` — `boolean`

Whether the sprite widget should resize according to the sprite in it. Defaults to `true`.

### `hovered_sprite` — `SpritePath`

The sprite to display on this sprite-button when it is hovered.

### `clicked_sprite` — `SpritePath`

The sprite to display on this sprite-button when it is clicked.

### `tooltip` — `LocalisedString`

The text to display when hovering over this element. Writing `""` or `nil` will disable the tooltip.

### `elem_tooltip` — `ElemID` *(optional)*

The element tooltip to display when hovering over this element, or `nil`.

### `horizontal_scroll_policy` — `ScrollPolicy`

Policy of the horizontal scroll bar.

### `vertical_scroll_policy` — `ScrollPolicy`

Policy of the vertical scroll bar.

### `type` — `GuiElementType` (read-only)

The type of this GUI element.

### `children` — `array[LuaGuiElement]` (read-only)

The child-elements of this GUI element.

### `items` — `array[LocalisedString]`

The items in this dropdown or listbox.

### `selected_index` — `uint32`

The selected index for this dropdown or listbox. Returns `0` if none is selected.

### `quality` — `LuaQualityPrototype` (read) / `QualityID` (write) *(optional)*

The quality to be shown in the bottom left corner of this sprite-button, or `nil` to show nothing.

### `number` — `double` *(optional)*

The number to be shown in the bottom right corner of this sprite-button, or `nil` to show nothing.

### `show_percent_for_small_numbers` — `boolean`

Related to the number to be shown in the bottom right corner of this sprite-button. When set to
`true`, numbers that are non-zero and smaller than one are shown as a percentage rather than the
value. For example, `0.5` will be shown as `50%` instead.

### `location` — `GuiLocation` *(optional)*

The location of this widget when stored in [LuaGui::screen](runtime:LuaGui::screen). `nil` if not
set or not in [LuaGui::screen](runtime:LuaGui::screen).

### `auto_center` — `boolean`

Whether this frame auto-centers on window resize when stored in
[LuaGui::screen](runtime:LuaGui::screen).

### `badge_text` — `LocalisedString`

The text to display after the normal tab text (designed to work with numbers)

### `auto_toggle` — `boolean`

Whether this button will automatically toggle when clicked.

### `toggled` — `boolean`

Whether this button is currently toggled. When a button is toggled, it will use the
`selected_graphical_set` and `selected_font_color` defined in its style.

### `game_controller_interaction` — `defines.game_controller_interaction`

How this element should interact with game controllers.

### `position` — `MapPosition`

The position this camera or minimap is focused on, if any.

### `surface_index` — `uint32`

The surface index this camera or minimap is using.

### `zoom` — `double`

The zoom this camera or minimap is using. This value must be positive.

### `minimap_player_index` — `uint32`

The player index this minimap is using.

### `force` — `string` *(optional)*

The force this minimap is using, if any.

### `elem_type` — `ElemType` (read-only)

The elem type of this choose-elem-button.

### `elem_value` — `string | SignalID | PrototypeWithQuality` *(optional)*

The elem value of this choose-elem-button, if any.  The `"signal"` type operates with
[SignalID](runtime:SignalID).  The `"with-quality"` types operate with
[PrototypeWithQuality](runtime:PrototypeWithQuality).  The remaining types use strings.

### `elem_filters` — `PrototypeFilter` *(optional)*

The elem filters of this choose-elem-button, if any. The compatible type of filter is determined by
`elem_type`.  Writing to this field does not change or clear the currently selected element.

### `selectable` — `boolean`

Whether the contents of this text-box are selectable. Defaults to `true`.

### `word_wrap` — `boolean`

Whether this text-box will word-wrap automatically. Defaults to `false`.

### `read_only` — `boolean`

Whether this text-box is read-only. Defaults to `false`.

### `enabled` — `boolean`

Whether this GUI element is enabled. Disabled GUI elements don't trigger events when clicked.

### `ignored_by_interaction` — `boolean`

Whether this GUI element is ignored by interaction. This makes clicks on this element 'go through'
to the GUI element or even the game surface below it.

### `locked` — `boolean`

Whether this choose-elem-button can be changed by the player.

### `draw_vertical_lines` — `boolean`

Whether this table should draw vertical grid lines.

### `draw_horizontal_lines` — `boolean`

Whether this table should draw horizontal grid lines.

### `draw_horizontal_line_after_headers` — `boolean`

Whether this table should draw a horizontal grid line below the first table row.

### `column_count` — `uint32` (read-only)

The number of columns in this table.

### `vertical_centering` — `boolean`

Whether the content of this table should be vertically centered. Overrides
[LuaStyle::column_alignments](runtime:LuaStyle::column_alignments). Defaults to `true`.

### `slider_value` — `double`

The value of this slider element.

### `mouse_button_filter` — `MouseButtonFlags`

The mouse button filters for this button or sprite-button.

### `numeric` — `boolean`

Whether this textfield is limited to only numeric characters.

### `allow_decimal` — `boolean`

Whether this textfield (when in numeric mode) allows decimal numbers.

### `allow_negative` — `boolean`

Whether this textfield (when in numeric mode) allows negative numbers.

### `is_password` — `boolean`

Whether this textfield displays as a password field, which renders all characters as `*`.

### `lose_focus_on_confirm` — `boolean`

Whether this textfield loses focus after
[defines.events.on_gui_confirmed](runtime:defines.events.on_gui_confirmed) is fired.

### `icon_selector` — `boolean` (read-only)

Whether this textfield or text-box was created with an icon selector.

### `drag_target` — `LuaGuiElement` *(optional)*

The `frame` that is being moved when dragging this GUI element, if any. This element needs to be a
child of the `drag_target` at some level.  Only top-level elements in
[LuaGui::screen](runtime:LuaGui::screen) can be `drag_target`s.

### `selected_tab_index` — `uint32` *(optional)*

The selected tab index for this tabbed pane, if any.

### `tabs` — `array[TabAndContent]` (read-only)

The tabs and contents being shown in this tabbed-pane.

### `entity` — `LuaEntity` *(optional)*

The entity associated with this entity-preview, camera, minimap, if any.

### `anchor` — `GuiAnchor` *(optional)*

The anchor for this relative widget, if any. Setting `nil` clears the anchor.

### `tags` — `Tags`

The tags associated with this LuaGuiElement.

### `raise_hover_events` — `boolean`

Whether this element will raise [on_gui_hover](runtime:on_gui_hover) and
[on_gui_leave](runtime:on_gui_leave).

### `switch_state` — `SwitchState`

The switch state for this switch.  If
[LuaGuiElement::allow_none_state](runtime:LuaGuiElement::allow_none_state) is false this can't be
set to `"none"`.

### `allow_none_state` — `boolean`

Whether the `"none"` state is allowed for this switch.  This can't be set to false if the current
switch_state is 'none'.

### `left_label_caption` — `LocalisedString`

The text shown for the left switch label.

### `left_label_tooltip` — `LocalisedString`

The tooltip shown on the left switch label.

### `right_label_caption` — `LocalisedString`

The text shown for the right switch label.

### `right_label_tooltip` — `LocalisedString`

The tooltip shown on the right switch label.

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

### `add(type: GuiElementType, ?name: string, ?caption: LocalisedString, ?tooltip: LocalisedString, ?elem_tooltip: ElemID, ?enabled: boolean, ?visible: boolean, ?locked: boolean, ?ignored_by_interaction: boolean, ?style: string, ?tags: Tags, ?index: uint32, ?anchor: GuiAnchor, ?game_controller_interaction: defines.game_controller_interaction, ?raise_hover_events: boolean) -> LuaGuiElement`

Add a new child element to this GuiElement.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `GuiElementType` | no | The kind of element to add, which potentially has its own attributes as listed below. |
| `name` | `string` | yes | Name of the child element. It must be unique within the parent element. |
| `caption` | `LocalisedString` | yes | Text displayed on the child element. For frames, this is their title. For other elements, like buttons or labels, thi... |
| `tooltip` | `LocalisedString` | yes | Tooltip of the child element. |
| `elem_tooltip` | `ElemID` | yes | Elem tooltip of the child element. Will be displayed above `tooltip`. |
| `enabled` | `boolean` | yes | Whether the child element is enabled. Defaults to `true`. |
| `visible` | `boolean` | yes | Whether the child element is visible. Defaults to `true`. |
| `locked` | `boolean` | yes | Whether the child element is locked. Defaults to `false`. |
| `ignored_by_interaction` | `boolean` | yes | Whether the child element is ignored by interaction. Defaults to `false`. |
| `style` | `string` | yes | The name of the style prototype to apply to the new element. |
| `tags` | `Tags` | yes | [Tags](runtime:Tags) associated with the child element. |
| `index` | `uint32` | yes | Location in its parent that the child element should slot into. By default, the child will be appended onto the end. |
| `anchor` | `GuiAnchor` | yes | Where to position the child element when in the `relative` element. |
| `game_controller_interaction` | `defines.game_controller_interaction` | yes | How the element should interact with game controllers. Defaults to [defines.game_controller_interaction.normal](runti... |
| `raise_hover_events` | `boolean` | yes | Whether this element will raise [on_gui_hover](runtime:on_gui_hover) and [on_gui_leave](runtime:on_gui_leave). Defaul... |

**Returns:**

- `LuaGuiElement` — The GUI element that was added.

### `clear()`

Remove children of this element. Any [LuaGuiElement](runtime:LuaGuiElement) objects referring to the
destroyed elements become invalid after this operation.

### `destroy()`

Remove this element, along with its children. Any [LuaGuiElement](runtime:LuaGuiElement) objects
referring to the destroyed elements become invalid after this operation.  The top-level GUI elements
- [LuaGui::top](runtime:LuaGui::top), [LuaGui::left](runtime:LuaGui::left),
[LuaGui::center](runtime:LuaGui::center) and [LuaGui::screen](runtime:LuaGui::screen) - can't be
destroyed.

### `get_mod() -> string`

The mod that owns this Gui element or `nil` if it's owned by the scenario script.  This has a not-
super-expensive, but non-free cost to get.

**Returns:**

- `string` — 

### `get_index_in_parent() -> uint32`

Gets the index that this element has in its parent element.  This iterates through the children of
the parent of this element, meaning this has a non-free cost to get, but is faster than doing the
equivalent in Lua.

**Returns:**

- `uint32` — 

### `swap_children(index_1: uint32, index_2: uint32)`

Swaps the children at the given indices in this element.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index_1` | `uint32` | no | The index of the first child. |
| `index_2` | `uint32` | no | The index of the second child. |

### `clear_items()`

Removes the items in this dropdown or listbox.

### `get_item(index: uint32) -> LocalisedString`

Gets the item at the given index from this dropdown or listbox.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index to get |

**Returns:**

- `LocalisedString` — 

### `set_item(index: uint32, string: LocalisedString)`

Sets the given string at the given index in this dropdown or listbox.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index whose text to replace. |
| `string` | `LocalisedString` | no | The text to set at the given index. |

### `add_item(string: LocalisedString, ?index: uint32)`

Inserts a string at the end or at the given index of this dropdown or listbox.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `string` | `LocalisedString` | no | The text to insert. |
| `index` | `uint32` | yes | The index at which to insert the item. |

### `remove_item(index: uint32)`

Removes the item at the given index from this dropdown or listbox.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index |

### `get_slider_minimum() -> double`

Gets this sliders minimum value.

**Returns:**

- `double` — 

### `get_slider_maximum() -> double`

Gets this sliders maximum value.

**Returns:**

- `double` — 

### `set_slider_minimum_maximum(minimum: double, maximum: double)`

Sets this sliders minimum and maximum values. The minimum can't be >= the maximum.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `minimum` | `double` | no |  |
| `maximum` | `double` | no |  |

### `get_slider_value_step() -> double`

Gets the minimum distance this slider can move.

**Returns:**

- `double` — 

### `get_slider_discrete_values() -> boolean`

Returns whether this slider only allows discrete values.

**Returns:**

- `boolean` — 

### `set_slider_value_step(value: double)`

Sets the minimum distance this slider can move. The minimum distance can't be > (max - min).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `value` | `double` | no |  |

### `set_slider_discrete_values(value: boolean)`

Sets whether this slider only allows discrete values.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `value` | `boolean` | no |  |

### `focus()`

Focuses this GUI element if possible.

### `scroll_to_top()`

Scrolls this scroll bar to the top.

### `scroll_to_bottom()`

Scrolls this scroll bar to the bottom.

### `scroll_to_left()`

Scrolls this scroll bar to the left.

### `scroll_to_right()`

Scrolls this scroll bar to the right.

### `scroll_to_element(element: LuaGuiElement, ?scroll_mode: 'in-view' | 'top-third')`

Scrolls this scroll bar such that the specified GUI element is visible to the player.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `element` | `LuaGuiElement` | no | The element to scroll to. |
| `scroll_mode` | `'in-view' | 'top-third'` | yes | Where the element should be positioned in the scroll-pane. Defaults to `"in-view"`. |

### `select_all()`

Selects all the text in this textbox.

### `select(start_index: int32, end_index: int32)`

Selects a range of text in this textbox.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `start_index` | `int32` | no | The index of the first character to select |
| `end_index` | `int32` | no | The index of the last character to select |

### `add_tab(tab: LuaGuiElement, content: LuaGuiElement)`

Adds the given tab and content widgets to this tabbed pane as a new tab.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tab` | `LuaGuiElement` | no | The tab to add, must be a GUI element of type "tab". |
| `content` | `LuaGuiElement` | no | The content to show when this tab is selected. Can be any type of GUI element. |

### `remove_tab(?tab: LuaGuiElement)`

Removes the given tab and its associated content from this tabbed pane.  Removing a tab does not
destroy the tab or the tab contents. It just removes them from the view.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tab` | `LuaGuiElement` | yes | The tab to remove or `nil` to remove all tabs. |

### `force_auto_center()`

Forces this frame to re-auto-center. Only works on frames stored directly in
[LuaGui::screen](runtime:LuaGui::screen).

### `scroll_to_item(index: int32, ?scroll_mode: 'in-view' | 'top-third')`

Scrolls the scroll bar such that the specified listbox item is visible to the player.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `int32` | no | The item index to scroll to. |
| `scroll_mode` | `'in-view' | 'top-third'` | yes | Where the item should be positioned in the list-box. Defaults to `"in-view"`. |

### `bring_to_front()`

Moves this GUI element to the "front" so it will draw over other elements.  Only works for elements
in [LuaGui::screen](runtime:LuaGui::screen).

### `close_dropdown()`

Closes the dropdown list if this is a dropdown and it is open.

## Operators

- `index` — The indexing operator. Gets children by name.
