# LuaFlowStatistics

Encapsulates statistic data for different parts of the game.  In the context of flow statistics,
`input`, `output` and `storage` describe in which position of the associated GUI the values are
shown. Input values are shown on the far left side, output values to the immediate right, and
storage values (if present) to the far right.  - The item production GUI shows "consumption" on the
right, thus `output` describes the item consumption numbers. The same goes for fluid consumption.  -
The kills GUI shows "losses" on the right, so `output` describes how many of the force's entities
were killed by enemies.  - The electric network GUI shows "power consumption" on the left side, so
in this case `input` describes the power consumption numbers. In addition, electric networks are
currently the only ones that utilize the `storage` part of their statistics, showing accumulator
charges to the far right of the GUI.

## Attributes

### `input_counts` — `dict[string, uint64 | double]` (read-only)

List of input counts indexed by prototype name. Represents the data that is shown on the left side
of the GUI for the given statistics.

### `output_counts` — `dict[string, uint64 | double]` (read-only)

List of output counts indexed by prototype name. Represents the data that is shown in the middle of
the GUI for electric networks and on the right side for all other statistics types.

### `storage_counts` — `dict[string, uint64 | double]` (read-only)

List of storage counts indexed by prototype name. Represents the data that is shown on the right
side of the GUI for electric networks. For other statistics types these values are currently unused
and hidden.

### `force` — `LuaForce` (read-only) *(optional)*

The force these statistics belong to. `nil` for pollution statistics.

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

### `get_input_count(id: FlowStatisticsID) -> uint64 | double`

Gets the total input count for a given prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `FlowStatisticsID` | no | The prototype ID. |

**Returns:**

- `uint64 | double` — 

### `set_input_count(id: FlowStatisticsID, count: uint64 | double)`

Sets the total input count for a given prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `FlowStatisticsID` | no | The prototype ID. |
| `count` | `uint64 | double` | no | The new count. The type depends on the instance of the statistics. |

### `get_output_count(id: FlowStatisticsID) -> uint64 | double`

Gets the total output count for a given prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `FlowStatisticsID` | no | The prototype ID. |

**Returns:**

- `uint64 | double` — 

### `set_output_count(id: FlowStatisticsID, count: uint64 | double)`

Sets the total output count for a given prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `FlowStatisticsID` | no | The prototype ID. |
| `count` | `uint64 | double` | no | The new count. The type depends on the instance of the statistics. |

### `get_storage_count(id: FlowStatisticsID) -> uint64 | double`

Gets the total storage count for a given prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `FlowStatisticsID` | no | The prototype ID. |

**Returns:**

- `uint64 | double` — 

### `set_storage_count(id: FlowStatisticsID, count: uint64 | double)`

Sets the total storage count for a given prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `FlowStatisticsID` | no | The prototype ID. |
| `count` | `uint64 | double` | no | The new count. The type depends on the instance of the statistics. |

### `get_flow_count(name: FlowStatisticsID, category: string, precision_index: defines.flow_precision_index, ?sample_index: uint16, ?count: boolean) -> double`

Gets the flow count value for the given time frame. If `sample_index` is not provided, then the
value returned is the average across the provided precision time period. These are the values shown
in the bottom section of the statistics GUIs.  Use `sample_index` to access the data used to
generate the statistics graphs. Each precision level contains 300 samples of data so at a precision
of 1 minute, each sample contains data averaged across 60s / 300 = 0.2s = 12 ticks.  All return
values are normalized to be per-tick for electric networks and per-minute for all other types.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `FlowStatisticsID` | no | The prototype ID. |
| `category` | `string` | no | The statistics category to read from. Valid choices are `"input"`, `"output"` and `"storage"`. |
| `precision_index` | `defines.flow_precision_index` | no | The precision to read. |
| `sample_index` | `uint16` | yes | The sample index to read from within the precision range. If not provided, the entire precision range is read. Must b... |
| `count` | `boolean` | yes | If true, the count of items/fluids/entities is returned instead of the per-time-frame value. |

**Returns:**

- `double` — 

### `on_flow(id: FlowStatisticsID, count: float)`

Adds a value to this flow statistics.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `FlowStatisticsID` | no | The prototype ID. |
| `count` | `float` | no | The count: positive or negative determines if the value goes in the input or output statistics. |

### `clear()`

Reset all the statistics data to 0.
