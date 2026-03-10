# LuaSchedule

The schedule of a particular [LuaTrain](runtime:LuaTrain) or
[LuaSpacePlatform](runtime:LuaSpacePlatform).

## Attributes

### `owner` — `LuaTrain | LuaSpacePlatform` (read-only) *(optional)*

The owner of this schedule.

### `interrupt_count` — `uint32` (read-only)

### `current` — `uint32` (read-only)

The schedule index of the current destination.

### `tick_of_last_schedule_change` — `MapTick` (read-only)

### `tick_of_last_activity` — `MapTick`

The time when the train or space platform was last considered active for the inactivity condition.
Note: when writing, value must not be larger than LuaGameScript::tick

### `ticks_in_station` — `MapTick` (read-only)

How long this train or space platform has been in the current station.

### `group` — `string` *(optional)*

The group this schedule is part of, if any.

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

### `add_wait_condition(record_position: ScheduleRecordPosition, condition_index: uint32, type: WaitConditionType)`

Adds the given wait condition to the given record.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no |  |
| `condition_index` | `uint32` | no |  |
| `type` | `WaitConditionType` | no |  |

### `remove_wait_condition(record_position: ScheduleRecordPosition, condition_index: uint32)`

Removes the given wait condition from the given record.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no |  |
| `condition_index` | `uint32` | no |  |

### `set_wait_condition_mode(record_position: ScheduleRecordPosition, condition_index: uint32, mode: string)`

Sets the comparison on the given wait condition.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no |  |
| `condition_index` | `uint32` | no |  |
| `mode` | `string` | no | `"and"`, or `"or"` |

### `change_wait_condition(record_position: ScheduleRecordPosition, condition_index: uint32, wait_condition: WaitCondition)`

Changes the wait condition on the given record to the new values.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no |  |
| `condition_index` | `uint32` | no |  |
| `wait_condition` | `WaitCondition` | no |  |

### `add_record(data: AddRecordData) -> uint32`

Adds the given record to the end of the current schedule or at the given index using the provided
data.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `data` | `AddRecordData` | no |  |

**Returns:**

- `uint32` — The index the record was added at.

### `remove_record(record_position: ScheduleRecordPosition)`

Removes the record at the given record position, if the record position is valid.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no |  |

### `copy_record(source_schedule: LuaSchedule, source_index: uint32, destination_index: uint32)`

Copies the record from the given schedule at the given index into this schedule at the given index.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source_schedule` | `LuaSchedule` | no |  |
| `source_index` | `uint32` | no |  |
| `destination_index` | `uint32` | no |  |

### `add_interrupt(interrupt: ScheduleInterrupt)`

Adds the given interrupt to the schedule if an interrupt with the given name does not already exist.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `interrupt` | `ScheduleInterrupt` | no |  |

### `remove_interrupt(index: uint32)`

Removes the interrupt at the given index, if the index is valid.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

### `activate_interrupt(index: uint32)`

Activates the interrupt at the given index, if the index is valid.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

### `change_interrupt(index: uint32, interrupt: ScheduleInterrupt)`

Changes the interrupt at the given index to the provided values. Note, the names must match.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |
| `interrupt` | `ScheduleInterrupt` | no |  |

### `rename_interrupt(old_name: string, new_name: string)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `old_name` | `string` | no | The interrupt to rename |
| `new_name` | `string` | no | The new name - if it already exists, does nothing. |

### `go_to_station(schedule_index: uint32)`

Sets the train or space platform to go to a destination, including changing the train/space platform
to automatic mode.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `schedule_index` | `uint32` | no | The schedule index |

### `set_stopped(stopped: boolean)`

Sets whether this train is in [manual mode](runtime:LuaTrain::manual_mode) or this space platform is
[paused](runtime:LuaSpacePlatform::paused).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `stopped` | `boolean` | no |  |

### `set_allow_unloading(record_position: ScheduleRecordPosition, allow: boolean)`

Sets if unloading is allowed at the given schedule record position. Only relevant for space
platforms.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no |  |
| `allow` | `boolean` | no |  |

### `drag_record(from: uint32, to: uint32, ?interrupt_index: uint32)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `from` | `uint32` | no |  |
| `to` | `uint32` | no |  |
| `interrupt_index` | `uint32` | yes | The interrupt to operate on, if any. |

### `drag_interrupt(from: uint32, to: uint32)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `from` | `uint32` | no |  |
| `to` | `uint32` | no |  |

### `drag_wait_condition(record_position: ScheduleRecordPosition, from: uint32, to: uint32)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no | The record to change. |
| `from` | `uint32` | no |  |
| `to` | `uint32` | no |  |

### `get_record(record_position: ScheduleRecordPosition) -> ScheduleRecord`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no |  |

**Returns:**

- `ScheduleRecord` — 

### `get_records(?interrupt_index: uint32) -> array[ScheduleRecord]`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `interrupt_index` | `uint32` | yes | If provided, gets the records for this interrupt. |

**Returns:**

- `array[ScheduleRecord]` — 

### `set_records(records: array[ScheduleRecord], ?interrupt_index: uint32)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `records` | `array[ScheduleRecord]` | no |  |
| `interrupt_index` | `uint32` | yes | If provided, the records will be set on this interrupt. |

### `clear_records(?interrupt_index: uint32)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `interrupt_index` | `uint32` | yes | If provided, clears the records for this interrupt. |

### `get_interrupt(index: uint32) -> ScheduleInterrupt`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `ScheduleInterrupt` — 

### `get_interrupts() -> array[ScheduleInterrupt]`

**Returns:**

- `array[ScheduleInterrupt]` — 

### `set_interrupts(interrupts: array[ScheduleInterrupt])`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `interrupts` | `array[ScheduleInterrupt]` | no |  |

### `clear_interrupts()`

Removes all interrupts.

### `get_wait_condition(record_position: ScheduleRecordPosition, condition_index: uint32) -> WaitCondition`

Gets the wait condition at the given record position if one exists.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no |  |
| `condition_index` | `uint32` | no |  |

**Returns:**

- `WaitCondition` — 

### `get_wait_conditions(record_position: ScheduleRecordPosition) -> array[WaitCondition]`

Gets the wait conditions at the given record position if they exist.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no |  |

**Returns:**

- `array[WaitCondition]` — 

### `get_wait_condition_count(record_position: ScheduleRecordPosition) -> uint32`

The number of wait conditions in the given schedule record.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `record_position` | `ScheduleRecordPosition` | no |  |

**Returns:**

- `uint32` — 

### `get_inside_interrupt(interrupt_index: uint32) -> boolean`

Gets if the given interrupt can be triggered inside other interrupts.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `interrupt_index` | `uint32` | no |  |

**Returns:**

- `boolean` — 

### `set_inside_interrupt(interrupt_index: uint32, value: boolean)`

Sets if the given interrupt can be triggered inside other interrupts.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `interrupt_index` | `uint32` | no |  |
| `value` | `boolean` | no |  |

### `get_record_count(?interrupt_index: uint32) -> uint32`

If the given index is invalid, `nil` is returned.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `interrupt_index` | `uint32` | yes | If provided, the record count in this interrupt is read. |

**Returns:**

- `uint32` — 
