# LuaTile

A single "square" on the map.

## Attributes

### `name` — `string` (read-only)

Prototype name of this tile. E.g. `"sand-3"` or `"grass-2"`.

### `prototype` — `LuaTilePrototype` (read-only)

### `position` — `TilePosition` (read-only)

The position this tile references.

### `hidden_tile` — `string` (read-only) *(optional)*

The name of the [LuaTilePrototype](runtime:LuaTilePrototype) hidden under this tile, if any.  During
normal gameplay, only [non-mineable](runtime:LuaTilePrototype::mineable_properties) or
[foundation](runtime:LuaTilePrototype::is_foundation) tiles can become hidden. This can however be
circumvented with [LuaSurface::set_hidden_tile](runtime:LuaSurface::set_hidden_tile).

### `double_hidden_tile` — `string` (read-only) *(optional)*

The name of the [LuaTilePrototype](runtime:LuaTilePrototype) double hidden under this tile or `nil`
if there is no double hidden tile.  During normal gameplay, only [non-
mineable](runtime:LuaTilePrototype::mineable_properties) tiles can become double hidden. This can
however be circumvented with
[LuaSurface::set_double_hidden_tile](runtime:LuaSurface::set_double_hidden_tile).

### `surface` — `LuaSurface` (read-only)

The surface this tile is on.

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

### `collides_with(layer: CollisionLayerID) -> boolean`

What type of things can collide with this tile?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `layer` | `CollisionLayerID` | no |  |

**Returns:**

- `boolean` — 

### `to_be_deconstructed(?force: ForceID) -> boolean`

Is this tile marked for deconstruction?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | yes | The force whose robots are supposed to do the deconstruction. If not given, checks if to be deconstructed by any force. |

**Returns:**

- `boolean` — 

### `order_deconstruction(force: ForceID, ?player: PlayerIdentification) -> LuaEntity`

Orders deconstruction of this tile by the given force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no | The force whose robots are supposed to do the deconstruction. |
| `player` | `PlayerIdentification` | yes | The player to set the last_user to if any. |

**Returns:**

- `LuaEntity` — The deconstructible tile proxy created, if any.

### `cancel_deconstruction(force: ForceID, ?player: PlayerIdentification)`

Cancels deconstruction if it is scheduled, does nothing otherwise.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no | The force who did the deconstruction order. |
| `player` | `PlayerIdentification` | yes | The player to set the last_user to if any. |

### `has_tile_ghost(?force: ForceID) -> boolean`

Does this tile have any tile ghosts on it.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | yes | Check for tile ghosts of this force. |

**Returns:**

- `boolean` — 

### `get_tile_ghosts(?force: ForceID) -> array[LuaEntity]`

Gets all tile ghosts on this tile.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | yes | Get tile ghosts of this force. |

**Returns:**

- `array[LuaEntity]` — The tile ghosts.
