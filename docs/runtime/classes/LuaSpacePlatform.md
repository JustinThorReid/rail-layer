# LuaSpacePlatform

A space platform.

## Attributes

### `force` — `LuaForce` (read-only)

The force of this space platform.

### `name` — `string`

The name of this space platform.

### `index` — `uint32` (read-only)

The unique index of this space platform.

### `space_location` — `LuaSpaceLocationPrototype` *(optional)*

The space location this space platform is stopped at or `nil`.  Write operation requires a valid
space location and will cancel pending item requests.

### `last_visited_space_location` — `LuaSpaceLocationPrototype` (read-only) *(optional)*

The space location this space platform previously went through or stopped at.

### `space_connection` — `LuaSpaceConnectionPrototype` *(optional)*

The space connection this space platform is traveling through or `nil`.  Write operation requires a
valid space connection and it sets the distance to 0.5.

### `distance` — `double` *(optional)*

The point on space connection this platform is at or `nil`.  It is represented as a number in range
`[0, 1]`, with 0 being
[LuaSpaceConnectionPrototype::from](runtime:LuaSpaceConnectionPrototype::from) and 1 being
[LuaSpaceConnectionPrototype::to](runtime:LuaSpaceConnectionPrototype::to).

### `state` — `defines.space_platform_state` (read-only)

The current state of this space platform.

### `paused` — `boolean`

When `true`, the platform has paused thrust and does not advance its schedule.

### `starter_pack` — `ItemIDAndQualityIDPair` (read-only) *(optional)*

The starter pack used to create this space platform.

### `surface` — `LuaSurface` (read-only)

The surface that belongs to this platform (if it has been created yet).

### `hub` — `LuaEntity` (read-only) *(optional)*

The hub on this platform. `nil` if the platform has not had the starter pack applied or hub was
destroyed but the platform not yet deleted.  If the hub is destroyed the platform will be deleted at
the end of the tick but is otherwise valid to use until that point.

### `schedule` — `PlatformSchedule` *(optional)*

This platform's current schedule, if any. Set to `nil` to clear.  The schedule can't be changed by
modifying the returned table. Instead, changes must be made by assigning a new table to this
attribute.

### `speed` — `double`

### `scheduled_for_deletion` — `uint32` (read-only)

If this platform is scheduled for deletion.  Returns how many ticks are left before the platform
will be deleted. 0 if not scheduled for deletion.

### `weight` — `Weight` (read-only)

The total weight of the platform.

### `damaged_tiles` — `array[{damage: float, position: TilePosition}]` (read-only)

The damaged tiles on this platform.

### `ejected_items` — `array[EjectedItem]` (read-only)

All items that have been thrown overboard.

### `hidden` — `boolean`

If this platform is hidden from the remote view surface list.

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

### `destroy(?ticks: uint32)`

Schedules this space platform for deletion.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ticks` | `uint32` | yes | The number of ticks from now when this platform will be deleted. |

### `cancel_deletion()`

Cancels deletion of this space platform if it was scheduled for deletion.

### `apply_starter_pack() -> LuaEntity`

Applies the starter pack for this platform if it hasn't already been applied.

**Returns:**

- `LuaEntity` — The platform hub.

### `damage_tile(position: TilePosition, damage: float, ?cause: LuaEntity)`

Damages the given tile if it exists, the chunk is generated, and it is a platform foundation tile.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `TilePosition` | no |  |
| `damage` | `float` | no |  |
| `cause` | `LuaEntity` | yes |  |

### `repair_tile(position: TilePosition, ?amount: float)`

Repairs the given tile if it's damaged.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `TilePosition` | no |  |
| `amount` | `float` | yes |  |

### `destroy_asteroid_chunks(?area: BoundingBox, ?position: MapPosition, ?name: AsteroidChunkID | array[AsteroidChunkID], ?limit: uint32, ?invert: boolean) -> uint32`

Destroys all asteroid chunks from the given area. If no area and no position are given, then the
entire surface is searched.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | yes |  |
| `position` | `MapPosition` | yes |  |
| `name` | `AsteroidChunkID | array[AsteroidChunkID]` | yes |  |
| `limit` | `uint32` | yes |  |
| `invert` | `boolean` | yes | If the filters should be inverted. |

**Returns:**

- `uint32` — The number of destroyed chunks.

### `create_asteroid_chunks(asteroid_chunks: array[AsteroidChunk])`

Creates the given asteroid chunks on this platform.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `asteroid_chunks` | `array[AsteroidChunk]` | no |  |

### `find_asteroid_chunks_filtered(?area: BoundingBox, ?position: MapPosition, ?name: AsteroidChunkID | array[AsteroidChunkID], ?limit: uint32, ?invert: boolean) -> array[AsteroidChunk]`

Find asteroid chunks of a given name in a given area.  If no filters are given, returns all asteroid
chunks in the search area. If multiple filters are specified, returns only asteroid chunks matching
every given filter. If no area and no position are given, the entire surface is searched.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | yes |  |
| `position` | `MapPosition` | yes |  |
| `name` | `AsteroidChunkID | array[AsteroidChunkID]` | yes |  |
| `limit` | `uint32` | yes |  |
| `invert` | `boolean` | yes | If the filters should be inverted. |

**Returns:**

- `array[AsteroidChunk]` — 

### `can_leave_current_location() -> boolean`

Returns `true` when the space platform isn't waiting on any delivery from the planet.

**Returns:**

- `boolean` — 

### `get_schedule() -> LuaSchedule`

**Returns:**

- `LuaSchedule` — 

### `eject_item(item: ItemStackIdentification, position: MapPosition, movement: Vector)`

Ejects an item into space on this space platform.  If a LuaItemStack is provided, the actual item is
ejected and removed from the source.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemStackIdentification` | no |  |
| `position` | `MapPosition` | no |  |
| `movement` | `Vector` | no | When inserters drop items into space, the [InserterPrototype::insert_position](prototype:InserterPrototype::insert_po... |

### `clear_ejected_items()`

Removes all ejected items from this space platform.
