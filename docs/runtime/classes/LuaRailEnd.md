# LuaRailEnd

Utility object that binds to a rail entity and rail_direction to allow easier traversal over rails

## Attributes

### `rail` — `LuaEntity` (read-only)

Rail to which this RailEnd is binding to.

### `direction` — `defines.rail_direction` (read-only)

Which end of the rail this RailEnd is binding to.

### `location` — `RailLocation` (read-only)

Location of the rail end

### `out_signal_location` — `RailLocation` (read-only)

Location of an outgoing signal, which goes to the right relative to the rail end movement.

### `alternative_out_signal_location` — `RailLocation` (read-only) *(optional)*

Location of the alternative outgoing signal, which goes to the right relative to the rail end
movement. Not all places have alternative outgoing signal spot, so when it is not available, a nil
will be given instead

### `in_signal_location` — `RailLocation` (read-only)

Location of an incoming signal, which goes to the left relative to the rail end movement.

### `alternative_in_signal_location` — `RailLocation` (read-only) *(optional)*

Location of the alternative incoming signal, which goes to the right relative to the rail end
movement. Not all places have alternative incoming signal spot, so when it is not available, a nil
will be given instead

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

### `make_copy() -> LuaRailEnd`

Creates a copy of this LuaRailEnd object.

**Returns:**

- `LuaRailEnd` — 

### `flip_direction()`

Moves to opposite end on the rail this object points to

### `move_forward(connection_direction: defines.rail_connection_direction) -> boolean`

Moves forward by 1 rail to the specified connection direction

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `connection_direction` | `defines.rail_connection_direction` | no |  |

**Returns:**

- `boolean` — If the move was successful. False if there is no rail connected in given connection_direction

### `move_natural() -> boolean`

Moves forward by 1 rail in the natural direction. Natural direction is a move in the direction taken
by the train over rail connection related to this rail end. If there are no trains, the natural
direction is straight if straight connected rail exists, otherwise it is right if right connected
rail exists, otherwise it is left if left connected rail exists. Natural direction is not defined if
there are no rails connected to this end and this method will fail.

**Returns:**

- `boolean` — If the move was successful. False only when there are no rails connected on this end

### `move_to_segment_end()`

Moves forward until a rail segment boundary is reached. If this rail end is at the segment boundary,
it will not move at all. When a rail segment is cyclical, it will reach the rail segment boundary at
some arbitrary position unless the segment boundary is well defined by presence of rail signals,
train stop or other rails connecting to the rails loop.

### `get_rail_extensions(planner_item: ItemID) -> array[RailExtensionData]`

Returns all possible rail extensions from this position as defined by the planner item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `planner_item` | `ItemID` | no | Rail planner that defines possible rail extensions |

**Returns:**

- `array[RailExtensionData]` — 
