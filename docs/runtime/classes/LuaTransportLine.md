# LuaTransportLine

One line on a transport belt.

## Attributes

### `owner` — `LuaEntity` (read-only)

The entity this transport line belongs to.

### `output_lines` — `array[LuaTransportLine]` (read-only)

The transport lines that this transport line outputs items to or an empty table if none.

### `input_lines` — `array[LuaTransportLine]` (read-only)

The transport lines that this transport line is fed by or an empty table if none.

### `line_length` — `float` (read-only)

Length of the transport line. Items can be inserted at line position from 0 up to returned value

### `total_segment_length` — `double` (read-only)

Total length of segment which consists of this line, all lines in front and lines in the back
directly connected.

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

### `clear()`

Remove all items from this transport line.

### `get_item_count(?item: ItemFilter) -> uint32`

Count some or all items on this line, similar to how
[LuaInventory::get_item_count](runtime:LuaInventory::get_item_count) does.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemFilter` | yes | If not specified, count all items. |

**Returns:**

- `uint32` — 

### `remove_item(items: ItemStackIdentification) -> uint32`

Remove some items from this line.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `items` | `ItemStackIdentification` | no | Items to remove. |

**Returns:**

- `uint32` — Number of items actually removed.

### `can_insert_at(position: float) -> boolean`

Can an item be inserted at a given position?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `float` | no | Where to insert an item. |

**Returns:**

- `boolean` — 

### `can_insert_at_back() -> boolean`

Can an item be inserted at the back of this line?

**Returns:**

- `boolean` — 

### `insert_at(position: float, items: ItemStackIdentification, ?belt_stack_size: uint8) -> boolean`

Insert items at a given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `float` | no | Where on the line to insert the items. |
| `items` | `ItemStackIdentification` | no | Items to insert. |
| `belt_stack_size` | `uint8` | yes | Maximum size of stack created on belt |

**Returns:**

- `boolean` — Were the items inserted successfully?

### `insert_at_back(items: ItemStackIdentification, ?belt_stack_size: uint8) -> boolean`

Insert items at the back of this line.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `items` | `ItemStackIdentification` | no |  |
| `belt_stack_size` | `uint8` | yes | Maximum size of stack created on belt |

**Returns:**

- `boolean` — Were the items inserted successfully?

### `force_insert_at(position: float, items: ItemStackIdentification, ?belt_stack_size: uint8)`

Force insert item at a given position. Inserts item onto a transport line. If a position is out of
range, it is clamped to a closest valid position on the transport line. Item will be inserted
regardless of other items nearby, possibly forcing items to become squashed.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `float` | no | Where on the line to insert the items. |
| `items` | `ItemStackIdentification` | no | Items to insert. |
| `belt_stack_size` | `uint8` | yes | Maximum size of stack created on belt |

### `get_contents() -> ItemWithQualityCounts`

Get counts of all items on this line, similar to how
[LuaInventory::get_contents](runtime:LuaInventory::get_contents) does.

**Returns:**

- `ItemWithQualityCounts` — List of all items on this line.

### `get_detailed_contents() -> array[DetailedItemOnLine]`

Get detailed information of items on this line, such as their position.

**Returns:**

- `array[DetailedItemOnLine]` — 

### `line_equals(other: LuaTransportLine) -> boolean`

Returns whether the associated internal transport line of this line is the same as the others
associated internal transport line.  This can return true even when the
[LuaTransportLine::owner](runtime:LuaTransportLine::owner)s are different (so `this == other` is
false), because the internal transport lines can span multiple tiles.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other` | `LuaTransportLine` | no |  |

**Returns:**

- `boolean` — 

### `get_line_item_position(position: float) -> MapPosition`

Get a map position related to a position on a transport line.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `float` | no | Linear position along the transport line. Clamped to the transport line range. |

**Returns:**

- `MapPosition` — 

## Operators

- `index` — The indexing operator.

- `length` — Get the number of items on this transport line.
