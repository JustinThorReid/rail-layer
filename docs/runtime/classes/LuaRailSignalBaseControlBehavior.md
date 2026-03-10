# LuaRailSignalBaseControlBehavior

Control behavior for rail signals and rail chain signals.

## Attributes

### `red_signal` — `SignalID` *(optional)*

### `orange_signal` — `SignalID` *(optional)*

### `green_signal` — `SignalID` *(optional)*

### `blue_signal` — `SignalID` *(optional)*

### `close_signal` — `boolean`

If this will close the rail signal based off the circuit condition.

### `read_signal` — `boolean`

If this will read the rail signal state.

### `circuit_condition` — `CircuitConditionDefinition`

The circuit condition when controlling the signal through the circuit network.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
