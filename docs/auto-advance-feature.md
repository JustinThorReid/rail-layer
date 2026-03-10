# Auto-Advance Feature Design

Automated track laying without a player driving the train.

---

## Problem Statement

The `rail-layer-build` trigger fires as the locomotive drives over each rail tie, reviving ghost rails ahead. But the locomotive can only path on **real** rails. Ghost rails don't exist as pathfinding targets. This creates a chicken-and-egg problem: the train can't move onto track that doesn't exist yet, but track only gets built as the train moves.

## Solution: Pre-Build + Temporary Schedule

When the train stops at the end of real track:

1. **Pre-build** a chunk of rails ahead by reviving ghost rail entities directly (without train movement), consuming items from cargo wagons.
2. **Schedule** a temporary stop at the newly-built section's end using `schedule.add_record({ temporary = true })`.
3. **Release** the train into automatic mode (`train.manual_mode = false`).
4. The train drives the pre-built section, firing `rail-layer-build` on each tie — this builds signals, train stops, and power poles along the way (not rails, since those are already built).
5. Train arrives at the temporary stop → `rail-layer-stop` fires → **repeat from step 1**.

This creates a leap-frog loop requiring no player interaction after initial setup.

## Trigger Point

The `stop_trigger` on the `rail-layer` entity prototype fires `rail-layer-stop` (via `on_script_trigger_effect`) whenever the train stops. This is the entry point for the auto-advance logic.

The handler should **no-op if `train.manual_mode == true`** so it doesn't interfere when a player is manually driving.

## Direction Handling

`train.front_end` and `train.back_end` correspond to the physical ends of the locomotive entity, not the direction of last travel. To handle both forward and backward travel:

- Try `front_end` first: traverse forward to the ghost frontier, check for ghosts.
- If no ghosts found, try `back_end`.

## Frontier Traversal

```lua
local cursor = rail_end.make_copy()
while cursor.move_natural() do end
-- cursor is now at the last real rail in this direction
```

`move_natural()` returns `false` when there is no next real rail. It cannot step onto ghost entities.

## Pre-Building Rails Ahead

After finding the frontier, revive ghosts iteratively, advancing the cursor after each:

```lua
for i = 1, N_PREBUILD do
  for _, ext in ipairs(cursor.get_rail_extensions("rail")) do
    local ghost = find.ghost(surface, { position = ext.position, name = ext.name, direction = ext.direction })
    if ghost then
      revive_entity(ghost, inventories)
      if cursor.move_natural() then
        -- ghost was revived and cursor advanced to the new real rail
        break
      end
    end
  end
end
```

`move_natural()` succeeding after `revive_entity` is the implicit success check — if the revive failed (no items, collision), `move_natural()` won't advance because no real rail exists yet.

## Temporary Schedule Record

```lua
train.get_schedule().add_record({
  rail           = cursor.rail,
  rail_direction = cursor.direction,
  temporary      = true,
  wait_conditions = {},
})
train.manual_mode = false
```

`temporary = true` causes Factorio to remove the record when the train departs from that stop — same as the player ctrl+click temp-stop feature. No physical `train-stop` entity is needed; the `rail` + `rail_direction` fields are sufficient for navigation.

## Division of Responsibility

| What builds what | How |
|---|---|
| Rails | Pre-built in `auto_advance` before train moves |
| Signals | Built by `rail-layer-build` as the train crosses each tie |
| Train stops | Built by `rail-layer-build` as the train crosses each tie |
| Power poles | Built by `rail-layer-build` as the train crosses each tie |

This means the 20 pre-built rails will NOT have signals/stops placed during pre-build. They are placed when the train subsequently drives over them. This is correct behaviour.

## Files

| File | Role |
|---|---|
| `scripts/auto_advance.lua` | Core logic: frontier detection, pre-build, schedule |
| `shared/rail-layer.lua` | Register `rail-layer-stop` handler calling `auto_advance` |

## Known Limitations

- **Elevated rails / ramps**: Not supported (consistent with rest of mod).
- **Branches**: `move_natural()` uses straight > right > left preference and may not follow the correct branch of a blueprint. At junctions, behaviour is undefined.
- **Items**: If cargo runs out mid-pre-build, fewer rails are built. Train will reach the last pre-built rail, stop, and retry — but if items are still exhausted, it stalls.
- **Manual mode**: Auto-advance only activates when `train.manual_mode == false`. Player must set this once via the train UI.

## Open Questions

- What is the ideal value for `N_PREBUILD`? Too low = many start/stop cycles. Too high = long pre-build pause. 20 rails is a reasonable starting point.
- Should `wait_conditions = {}` (empty) cause an immediate depart? Needs in-game testing.
- Does `rail_direction = cursor.direction` correctly encode the arrival direction for the scheduler? Needs in-game testing.
