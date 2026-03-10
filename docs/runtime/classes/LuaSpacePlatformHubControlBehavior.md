# LuaSpacePlatformHubControlBehavior

Control behavior for space platform hubs

## Attributes

### `read_contents` — `boolean`

`true` if this hub is sending its content to a circuit network

### `send_to_platform` — `boolean`

Whether the signals are used for circuit conditions in the platform's schedule

### `read_moving_from` — `boolean`

Whether current connection "from" end is sent to circuit network.

### `read_moving_to` — `boolean`

Whether current connection "to" end is sent to circuit network.

### `read_speed` — `boolean`

Whether current speed of space platform is sent to circuit network.

### `speed_signal` — `SignalID` *(optional)*

Signal to be transmitted with platform's current speed.

### `read_damage_taken` — `boolean`

Whether damage taken by the space platform is sent to circuit network.

### `damage_taken_signal` — `SignalID` *(optional)*

Signal to be transmitted with platform's damage taken value.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
