# LuaTrain

A train. Trains are a sequence of connected rolling stocks -- locomotives and wagons.

## Attributes

### `manual_mode` — `boolean`

When `true`, the train is explicitly controlled by the player or script. When `false`, the train
moves autonomously according to its schedule.

### `speed` — `double`

Current speed.  Changing the speed of the train is potentially an unsafe operation because train
uses the speed for its internal calculations of break distances, etc.

### `max_forward_speed` — `double` (read-only)

Current max speed when moving forward, depends on locomotive prototype and fuel.

### `max_backward_speed` — `double` (read-only)

Current max speed when moving backwards, depends on locomotive prototype and fuel.

### `weight` — `double` (read-only)

The weight of this train.

### `carriages` — `array[LuaEntity]` (read-only)

The rolling stocks this train is composed of, with the numbering starting at the
[front](runtime:LuaTrain::front_stock) of the train.

### `locomotives` — `{back_movers: array[LuaEntity], front_movers: array[LuaEntity]}` (read-only)

Locomotives of the train.

### `cargo_wagons` — `array[LuaEntity]` (read-only)

The cargo carriages the train contains.

### `fluid_wagons` — `array[LuaEntity]` (read-only)

The fluid carriages the train contains.

### `schedule` — `TrainSchedule` *(optional)*

This train's current schedule, if any. Set to `nil` to clear.  The schedule can't be changed by
modifying the returned table. Instead, changes must be made by assigning a new table to this
attribute.

### `state` — `defines.train_state` (read-only)

This train's current state.

### `front_stock` — `LuaEntity` (read-only) *(optional)*

The front stock of this train, if any. The front of the train is in the direction that a majority of
locomotives are pointing in. If it's a tie, the North and West directions take precedence.

### `back_stock` — `LuaEntity` (read-only) *(optional)*

The back stock of this train, if any. The back of the train is at the opposite end of the
[front](runtime:LuaTrain::front_stock).

### `station` — `LuaEntity` (read-only) *(optional)*

The train stop this train is stopped at, if any.

### `has_path` — `boolean` (read-only)

If this train has a path.

### `path_end_rail` — `LuaEntity` (read-only) *(optional)*

The destination rail this train is currently pathing to, if any.

### `path_end_stop` — `LuaEntity` (read-only) *(optional)*

The destination train stop this train is currently pathing to, if any.

### `id` — `uint32` (read-only)

The unique train ID.

### `passengers` — `array[LuaPlayer]` (read-only)

The player passengers on the train  This does *not* index using player index. See
[LuaPlayer::index](runtime:LuaPlayer::index) on each player instance for the player index.

### `riding_state` — `RidingState` (read-only)

The riding state of this train.

### `killed_players` — `dict[uint32, uint32]` (read-only)

The players killed by this train.  The keys are the player indices, the values are how often this
train killed that player.

### `kill_count` — `uint32` (read-only)

The total number of kills by this train.

### `path` — `LuaRailPath` (read-only) *(optional)*

The path this train is using, if any.

### `signal` — `LuaEntity` (read-only) *(optional)*

The signal this train is arriving or waiting at, if any.

### `group` — `string`

The group this train belongs to.  Setting the group will apply the schedule of the group to this
train.

### `front_end` — `LuaRailEnd` (read-only)

Front end of the train: Rail and direction on that rail where the train will go when moving forward

### `back_end` — `LuaRailEnd` (read-only)

Back end of the train: Rail and direction on that rail where the train will go when moving backward

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

### `get_item_count(?item: ItemFilter) -> uint32`

Get the amount of a particular item stored in the train.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemFilter` | yes | If not given, counts all items. |

**Returns:**

- `uint32` — 

### `get_contents() -> ItemWithQualityCounts`

Get a mapping of the train's inventory.

**Returns:**

- `ItemWithQualityCounts` — List of all items in the train.

### `remove_item(stack: ItemStackIdentification) -> uint32`

Remove some items from the train.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `stack` | `ItemStackIdentification` | no | The amount and type of items to remove |

**Returns:**

- `uint32` — Number of items actually removed.

### `insert(stack: ItemStackIdentification)`

Insert a stack into the train.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `stack` | `ItemStackIdentification` | no |  |

### `clear_items_inside()`

Clear all items in this train.

### `recalculate_path(?force: boolean) -> boolean`

Checks if the path is invalid and tries to re-path if it isn't.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `boolean` | yes | Forces the train to re-path regardless of the current path being valid or not. |

**Returns:**

- `boolean` — If the train has a path after the repath attempt.

### `get_fluid_count(?fluid: string) -> double`

Get the amount of a particular fluid stored in the train.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid` | `string` | yes | Fluid name to count. If not given, counts all fluids. |

**Returns:**

- `double` — 

### `get_fluid_contents() -> dict[string, FluidAmount]`

Gets a mapping of the train's fluid inventory.

**Returns:**

- `dict[string, FluidAmount]` — The counts, indexed by fluid names.

### `remove_fluid(fluid: Fluid) -> double`

Remove some fluid from the train.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid` | `Fluid` | no |  |

**Returns:**

- `double` — The amount of fluid actually removed.

### `insert_fluid(fluid: Fluid) -> double`

Inserts the given fluid into the first available location in this train.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid` | `Fluid` | no |  |

**Returns:**

- `double` — The amount inserted.

### `clear_fluids_inside()`

Clears all fluids in this train.

### `go_to_station(index: uint32)`

Go to the station specified by the index in the train's schedule.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

### `get_rails() -> array[LuaEntity]`

Gets all rails under the train.

**Returns:**

- `array[LuaEntity]` — 

### `get_rail_end(direction: defines.rail_direction) -> LuaRailEnd`

Gets a LuaRailEnd object pointing away from the train at specified end of the train

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `defines.rail_direction` | no |  |

**Returns:**

- `LuaRailEnd` — 

### `get_schedule() -> LuaSchedule`

**Returns:**

- `LuaSchedule` — 
