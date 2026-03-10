# LuaSimulation

Functions for use during simulations. This object cannot be saved, and cannot be used outside of a
simulation.  The simulation object instance can be obtained from
[LuaGameScript::simulation](runtime:LuaGameScript::simulation).

## Attributes

### `camera_player_cursor_position` — `MapPosition` *(optional)*

### `camera_position` — `MapPosition` *(optional)*

### `camera_surface_index` — `uint32` *(optional)*

### `hide_cursor` — `?` (read) / `boolean` (write)

### `camera_zoom` — `?` (read) / `double` (write)

### `camera_player` — `?` (read) / `PlayerIdentification` (write)

### `camera_player_cursor_direction` — `?` (read) / `defines.direction` (write)

### `camera_alt_info` — `?` (read) / `boolean` (write)

### `smart_belt_building` — `?` (read) / `boolean` (write) *(optional)*

### `gui_tooltip_interval` — `?` (read) / `double` (write)

### `active_quickbars` — `?` (read) / `uint8` (write)

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

### `create_test_player(name: string) -> LuaPlayer`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | The name of the new player. |

**Returns:**

- `LuaPlayer` — The created player.

### `get_slot_position(inventory_index: InventoryIndex, slot_index: ItemStackIndex, ?inventory: 'character' | 'entity') -> MapPosition`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_index` | `InventoryIndex` | no |  |
| `slot_index` | `ItemStackIndex` | no | This index is 0-based, unlike other inventory indices. |
| `inventory` | `'character' | 'entity'` | yes | Defaults to `"character"`. |

**Returns:**

- `MapPosition` — Position of the GUI slot on the screen, if successfully found.

### `get_widget_position(type: SimulationWidgetType, ?data: string, ?data2: string) -> MapPosition`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `SimulationWidgetType` | no |  |
| `data` | `string` | yes |  |
| `data2` | `string` | yes |  |

**Returns:**

- `MapPosition` — Center of the GUI widget on the screen, if successfully found.

### `activate_rail_planner(?position: MapPosition, ?ghost_mode: boolean, ?build_mode: defines.build_mode)`

Activate the rail planner at the given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | yes |  |
| `ghost_mode` | `boolean` | yes | Defaults to `false`. |
| `build_mode` | `defines.build_mode` | yes | Defaults to [normal](runtime:defines.build_mode.normal). |

### `deactivate_rail_planner()`

Deactivate the rail planner.

### `move_cursor(position: MapPosition, ?speed: double) -> boolean`

Move the cursor towards the given position at the given speed.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no |  |
| `speed` | `double` | yes | Defaults to `0.2`. |

**Returns:**

- `boolean` — Whether the cursor will reach the target position with this move.

### `mouse_down()`

Send a left mouse button-down event at its current position.

### `mouse_up()`

Send a left mouse button-up event at its current position.

### `mouse_click()`

Send a left mouse button click event at its current position. This is equivalent to calling
[LuaSimulation::mouse_down](runtime:LuaSimulation::mouse_down), then
[LuaSimulation::mouse_up](runtime:LuaSimulation::mouse_up).

### `control_down(control: string, notify: boolean)`

Send a control press event at the current cursor position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `control` | `string` | no | The name of the control input to press. |
| `notify` | `boolean` | no | Whether to show flying text of the activated control. |

### `control_up(control: string)`

Send a control release event at the current cursor position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `control` | `string` | no | The name of the control input to release. |

### `control_press(control: string, notify: boolean)`

Send a control down and up event at the current cursor position. This is equivalent to calling
[LuaSimulation::control_down](runtime:LuaSimulation::control_down), then
[LuaSimulation::control_up](runtime:LuaSimulation::control_up).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `control` | `string` | no | The name of the control input to press and release. |
| `notify` | `boolean` | no | Whether to show flying text of the activated control. |

### `write(?text: string)`

Write text as if it was typed by a player. Overwrites existing text by selecting it first.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `text` | `string` | yes | The text to write. Does nothing if no text is provided. |

### `scroll_clipboard_forwards()`

Scroll the clipboard forwards by one entry.

### `scroll_clipboard_backwards()`

Scroll the clipboard backwards by one entry.
