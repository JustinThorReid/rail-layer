# LuaRCON

An interface to send messages to the calling RCON interface through the global object named `rcon`.

## Attributes

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

## Methods

### `print(message: LocalisedString)`

Print text to the calling RCON interface if any.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `message` | `LocalisedString` | no |  |
