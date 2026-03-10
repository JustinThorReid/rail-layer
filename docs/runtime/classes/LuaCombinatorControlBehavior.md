# LuaCombinatorControlBehavior

## Attributes

### `signals_last_tick` — `array[Signal]` (read-only)

The circuit network signals sent by this combinator last tick.

## Methods

### `get_signal_last_tick(signal: SignalID) -> int32`

Gets the value of a specific signal sent by this combinator behavior last tick or `nil` if the
signal didn't exist.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `signal` | `SignalID` | no | The signal to get |

**Returns:**

- `int32` — 
