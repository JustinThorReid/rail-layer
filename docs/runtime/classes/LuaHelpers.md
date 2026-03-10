# LuaHelpers

Provides various helper and utility functions. It is accessible through the global object named
`helpers` in all stages (settings, prototype and runtime).

## Attributes

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

### `game_version` — `string` (read-only)

Current version of game

## Methods

### `table_to_json(data: table) -> string`

Convert a table to a JSON string

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `data` | `table` | no |  |

**Returns:**

- `string` — 

### `json_to_table(json: string) -> AnyBasic`

Convert a JSON string to a table.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `json` | `string` | no | The string to convert. |

**Returns:**

- `AnyBasic` — The returned object, or `nil` if the JSON string was invalid.

### `write_file(filename: string, data: LocalisedString, ?append: boolean, ?for_player: uint32)`

Write a file to the `script-output` folder, located in the game's [user data
directory](https://wiki.factorio.com/User_data_directory). The name and file extension of the file
can be specified via the `filename` parameter.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filename` | `string` | no | The name of the file. Providing a directory path (ex. `"save/here/example.txt"`) will create the necessary folder str... |
| `data` | `LocalisedString` | no | The content to write to the file. |
| `append` | `boolean` | yes | If `true`, `data` will be appended to the end of the file. Defaults to `false`, which will overwrite any pre-existing... |
| `for_player` | `uint32` | yes | If given, the file will only be written for this `player_index`. Providing `0` will only write to the server's output... |

### `send_udp(port: uint16, data: LocalisedString, ?for_player: uint32)`

Send data to a UDP port on localhost for a specified player, if enabled.  This must be enabled per-
instance with `--enable-lua-udp`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `port` | `uint16` | no | Destination port number (localhost only) |
| `data` | `LocalisedString` | no | The content to send. |
| `for_player` | `uint32` | yes | If given, the packet will only be sent from this `player_index`. Providing `0` will only send from the server if pres... |

### `recv_udp(?for_player: uint32)`

Dispatch [defines.events.on_udp_packet_received](runtime:defines.events.on_udp_packet_received)
events for any new packets received by the specified player or the server.  This must be enabled
per-instance with `--enable-lua-udp`.  UDP socket when enabled requests 256KB of receive buffer from
the operating system. If there is more data than this between two subsequent calls of this method,
data will be lost. That also applies to periods when the game is paused or is being saved as in
those case the game update is not happening.  Note: lua event is not raised immediately as the UDP
packet needs to be introduced into game state by means of input actions. Please keep incoming
traffic as small as possible as in case of multiplayer game with many players, all this data will
have to go through the multiplayer server and be distributed to all clients.  Not available in
settings and prototype stages.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `for_player` | `uint32` | yes | If given, packets will only be read from this `player_index`. Providing `0` will only read from the server if present. |

### `remove_path(path: string)`

Remove a file or directory in the `script-output` folder, located in the game's [user data
directory](https://wiki.factorio.com/User_data_directory). Can be used to remove files created by
[LuaHelpers::write_file](runtime:LuaHelpers::write_file).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `path` | `string` | no | The path to the file or directory to remove, relative to `script-output`. |

### `direction_to_string(direction: defines.direction) -> string`

Converts the given direction into the string version of the direction.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `direction` | `defines.direction` | no |  |

**Returns:**

- `string` — 

### `evaluate_expression(expression: MathExpression, ?variables: dict[string, double]) -> double`

Evaluate an expression, substituting variables as provided.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `expression` | `MathExpression` | no | The expression to evaluate. |
| `variables` | `dict[string, double]` | yes | Variables to be substituted. |

**Returns:**

- `double` — 

### `encode_string(string: string) -> string`

Deflates and base64 encodes the given string.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `string` | `string` | no | The string to encode. |

**Returns:**

- `string` — The encoded string or `nil` if the encode failed.

### `decode_string(string: string) -> string`

Base64 decodes and inflates the given string.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `string` | `string` | no | The string to decode. |

**Returns:**

- `string` — The decoded string or `nil` if the decode failed.

### `parse_map_exchange_string(map_exchange_string: string) -> MapExchangeStringData`

Convert a map exchange string to map gen settings and map settings.  Not available in settings and
prototype stages.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `map_exchange_string` | `string` | no |  |

**Returns:**

- `MapExchangeStringData` — 

### `check_prototype_translations()`

Goes over all items, entities, tiles, recipes, technologies among other things and logs if the
locale is incorrect.  Also prints true/false if called from the console.  Not available in settings
and prototype stages.

### `is_valid_sound_path(sound_path: SoundPath) -> boolean`

Checks if the given SoundPath is valid.  Not available in settings and prototype stages.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sound_path` | `SoundPath` | no | Path to the sound. |

**Returns:**

- `boolean` — 

### `is_valid_sprite_path(sprite_path: SpritePath) -> boolean`

Checks if the given SpritePath is valid and contains a loaded sprite. The existence of the image is
not checked for paths of type `file`.  Not available in settings and prototype stages.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sprite_path` | `SpritePath` | no | Path to the image. |

**Returns:**

- `boolean` — 

### `create_profiler(?stopped: boolean) -> LuaProfiler`

Creates a [LuaProfiler](runtime:LuaProfiler), which is used for measuring script performance.
LuaProfiler cannot be serialized.  Not available in settings and prototype stages.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `stopped` | `boolean` | yes | Create the timer stopped |

**Returns:**

- `LuaProfiler` — 

### `compare_versions(first: string, second: string) -> int32`

Compares 2 version strings.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `first` | `string` | no | First version string to compare. |
| `second` | `string` | no | Second version string to compare. |

**Returns:**

- `int32` — -1 if first is smaller than second, 0 if first equal second, 1 if first is greater than second.

### `multilingual_to_lower(input: string) -> string`

Converts the given string to lowercase and returns it. Unlike `string.lower()`, this function
supports [non-Latin characters](https://factorio.com/blog/post/fff-436).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `input` | `string` | no |  |

**Returns:**

- `string` — The input string converted to lowercase.
