# Factorio 2.0 API Notes

API version documented: 2.0.76. Docs live in `Factorio API Runtime Docs/`.

---

## Train Scheduling

### `LuaTrain`

| Property/Method | Type | Notes |
|---|---|---|
| `schedule` | `TrainSchedule?` RW | Old-style table. Writable directly. |
| `get_schedule()` | `→ LuaSchedule` | New OOP interface, prefer this. |
| `manual_mode` | `boolean` RW | `true` = player/script control, `false` = follows schedule. |
| `go_to_station(index)` | `void` | Jump to a specific schedule index. |
| `front_end` | `LuaRailEnd` R | Front of the locomotive entity (not necessarily direction of travel). |
| `back_end` | `LuaRailEnd` R | Back of the locomotive. |
| `speed` | `double` R | Positive = moving forward, negative = backward, 0 = stopped. |
| `cargo_wagons` | `LuaEntity[]` R | All cargo wagons in the train. |

`manual_mode = false` is how you make a train autonomously follow its schedule.

### `LuaSchedule`

Methods on the object returned by `train.get_schedule()`:

| Method | Returns | Notes |
|---|---|---|
| `add_record(data)` | `uint32?` | Appends or inserts at index. Returns new record index. |
| `remove_record(pos)` | `void` | Remove by position. |
| `get_record(pos)` | `ScheduleRecord?` | Get one record. |
| `get_records(interrupt?)` | `ScheduleRecord[]?` | Get all records. |
| `set_records(records, interrupt?)` | `void` | Replace all records. |
| `clear_records(interrupt?)` | `void` | Remove all. |

### `AddRecordData` (argument to `add_record`)

```lua
{
  station         = string?,             -- name of a train-stop entity
  rail            = LuaEntity?,          -- rail entity to navigate to (no stop needed)
  rail_direction  = defines.rail_direction?, -- which end of the rail to arrive at
  temporary       = boolean?,            -- if true, record is removed after train departs (replicates ctrl+click behavior)
  wait_conditions = WaitCondition[]?,    -- empty = depart immediately
  allows_unloading = boolean?,
  created_by_interrupt = boolean?,
  index           = ScheduleRecordPosition?, -- insert position (omit to append)
}
```

**Key insight**: `temporary = true` replicates the player's ctrl+click temp stop without needing a physical `train-stop` entity. Use `rail` + `rail_direction` to navigate to a bare rail position.

### `TrainSchedule` (old-style, still writable)

```lua
train.schedule = {
  current = 1,            -- index of active record
  records = { ... }       -- array of ScheduleRecord
}
```

### `ScheduleRecord`

Same fields as `AddRecordData` minus `index`. `temporary` field present here too.

---

## Rail Traversal — `LuaRailEnd`

A cursor object that points to one end of a rail entity and can traverse the network.

| Method/Property | Notes |
|---|---|
| `rail` R | The rail entity at the current position. |
| `direction` R | `defines.rail_direction` — which end of the rail we're at. |
| `location` R | `RailLocation` — position + direction. |
| `move_natural()` | Advance one rail in the "natural" direction (straight > right > left). Returns `false` if no real rail ahead — **critical for end-of-track detection**. |
| `move_forward(connection_direction)` | Advance one rail in a specific connection direction. |
| `move_to_segment_end()` | Jump to the nearest rail segment boundary. |
| `flip_direction()` | Swap to the opposite end of the same rail. |
| `make_copy()` | Clone the cursor (non-destructive traversal). |
| `get_rail_extensions("rail")` | Returns `RailExtensionData[]` — the positions/directions the track *could* extend to (including ghost positions). |
| `out_signal_location` R | Signal location to the right of the direction of travel. |
| `in_signal_location` R | Signal location to the left of the direction of travel. |

### Traversing to end of real track

```lua
local cursor = train.front_end.make_copy()
while cursor.move_natural() do end
-- cursor.rail is now the last real rail in this direction
```

`move_natural()` cannot traverse ghost entities — it only moves to real rail. This means it naturally stops at the ghost frontier.

### Detecting ghost rails ahead

```lua
local extensions = cursor.get_rail_extensions("rail")
for _, ext in ipairs(extensions) do
  local ghost = find.ghost(surface, {
    position  = ext.position,
    name      = ext.name,
    direction = ext.direction,
  })
  if ghost then
    -- ghost rail exists at this extension position
  end
end
```

`get_rail_extensions("rail")` accepts a string item name. Despite the API saying `planner_item` (ItemStack), passing `"rail"` works (implicit coercion).

---

## Ghost Detection

`find.ghost(surface, args)` (project utility in `scripts/find.lua`) converts `name`/`type` to `ghost_name`/`ghost_type` before calling `surface.find_entities_filtered`. Always use this instead of calling the surface API directly for ghosts.

---

## Train Stop Entity Creation

If a physical train stop is ever needed (alternative to rail-based schedule records):

```lua
surface.create_entity({
  name      = "train-stop",
  position  = { x, y },
  direction = defines.direction.north,
  force     = train.force,
})
```

A physical stop is **not required** for temporary schedule navigation — `rail` + `rail_direction` in `AddRecordData` is sufficient.

---

## Events

| Event | When it fires |
|---|---|
| `on_script_trigger_effect` | Fires for any `script` trigger in an entity prototype. Dispatched by `utils/events/script_trigger_effect.lua`. |
| `on_train_changed_state` | Fires when `train.state` changes. Fields: `train`, `old_state`. |

The `stop_trigger` field on a locomotive prototype fires `on_script_trigger_effect` with the given `effect_id` when the train comes to a stop. The `drive_over_tie_trigger` fires on each rail tie crossed.

---

## `defines.rail_direction`

Two values: `defines.rail_direction.front` (0) and `defines.rail_direction.back` (1). Refers to which end of a rail entity, not which way the train is facing.
