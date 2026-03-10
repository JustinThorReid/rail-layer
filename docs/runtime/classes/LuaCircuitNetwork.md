# LuaCircuitNetwork

A circuit network associated with a given entity, connector, and wire type.

## Attributes

### `entity` — `LuaEntity` (read-only)

The entity this circuit network reference is associated with.

### `wire_type` — `defines.wire_type` (read-only)

The wire type this network is associated with.

### `wire_connector_id` — `defines.wire_connector_id` (read-only)

Wire connector ID on associated entity this network was gotten from.

### `signals` — `array[Signal]` (read-only) *(optional)*

The circuit network signals last tick. `nil` if there were no signals last tick.

### `network_id` — `uint32` (read-only)

The circuit networks ID.

### `connected_circuit_count` — `uint32` (read-only)

The number of circuits connected to this network.

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

### `get_signal(signal: SignalID) -> int32`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `signal` | `SignalID` | no | The signal to read. |

**Returns:**

- `int32` — The current value of the signal.
