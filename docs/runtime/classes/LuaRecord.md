# LuaRecord

A reference to a record in the blueprint library. Records in the "my blueprints" shelf are read-
only, but records in the "game blueprints" shelf are read/write.

## Attributes

### `valid_for_write` — `boolean` (read-only)

Is this record valid for writing? A record is invalid for write if it is a BlueprintRecord preview
or if it is in the "My blueprints" shelf.

### `type` — `'blueprint' | 'blueprint-book' | 'deconstruction-planner' | 'upgrade-planner'` (read-only)

The type of this blueprint record.

### `preview_icons` — `array[BlueprintSignalIcon]`

The preview icons for this record.

### `is_preview` — `boolean` (read-only)

Checks if this record is in a preview state.

### `is_blueprint_preview` — `boolean` (read-only)

Is this blueprint record a preview? A preview record must be synced by the player before entity and
tile data can be read. This property is deprecated in favor of
[LuaRecord::is_preview](runtime:LuaRecord::is_preview) and should not be used.

### `blueprint_snap_to_grid` — `TilePosition` *(optional)*

The snapping grid size in this blueprint. `nil` if snapping is not enabled.

### `blueprint_position_relative_to_grid` — `TilePosition` *(optional)*

The offset from the absolute grid. `nil` if absolute snapping is not enabled.

### `blueprint_absolute_snapping` — `boolean`

If absolute snapping is enabled on this blueprint.

### `blueprint_description` — `string`

The description for this blueprint or blueprint book.

### `cost_to_build` — `ItemWithQualityCounts` (read-only)

List of raw materials required to build this blueprint.

### `default_icons` — `array[BlueprintSignalIcon]` (read-only)

The default icons for a blueprint blueprint.

### `contents` — `dict[ItemStackIndex, LuaRecord]` (read-only)

The contents of this BlueprintBookRecord. This is sparse array - it may have gaps, so using `#` will
not be reliable. Use [LuaRecord::contents_size](runtime:LuaRecord::contents_size) or `pairs()` to
iterate this table.

### `contents_size` — `ItemStackIndex` (read-only)

The highest populated index in the contents of this BlueprintBookRecord.

### `entity_filters` — `array[ItemFilter]`

The entity filters for this deconstruction planner. The attribute is a sparse array with the keys
representing the index of the filter. All prototypes in this array must not have the `"not-
deconstructable"` flag set and are either a `cliff` or marked as `minable`.

### `tile_filters` — `array[TileID]`

The tile filters for this deconstruction planner. The attribute is a sparse array with the keys
representing the index of the filter. Reading filters always returns an array of strings which are
the tile prototype names.

### `entity_filter_mode` — `defines.deconstruction_item.entity_filter_mode`

The blacklist/whitelist entity filter mode for this deconstruction planner.

### `tile_filter_mode` — `defines.deconstruction_item.tile_filter_mode`

The blacklist/whitelist tile filter mode for this deconstruction planner.

### `tile_selection_mode` — `defines.deconstruction_item.tile_selection_mode`

The tile selection mode for this deconstruction planner.

### `trees_and_rocks_only` — `boolean`

If this deconstruction planner, is set to allow trees and rocks only.

### `entity_filter_count` — `uint32` (read-only)

The number of entity filters this deconstruction planner supports.

### `tile_filter_count` — `uint32` (read-only)

The number of tile filters this deconstruction planner supports.

### `mapper_count` — `uint32` (read-only)

The current count of mappers in the upgrade item.

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

### `export_record() -> string`

Exports this record to a string.

**Returns:**

- `string` — 

### `clear_blueprint()`

Clears this blueprint.

### `is_blueprint_setup() -> boolean`

Is this blueprint setup? I.e. is it a non-empty blueprint?

**Returns:**

- `boolean` — 

### `build_blueprint(surface: SurfaceIdentification, force: ForceID, position: MapPosition, ?direction: defines.direction, ?build_mode: defines.build_mode, ?skip_fog_of_war: boolean, ?by_player: PlayerIdentification, ?raise_built: boolean) -> array[LuaEntity]`

Build this blueprint at the given location.  Built entities can be come invalid between the building
of the blueprint and the function returning if by_player or raise_built is used and one of those
events invalidates the entity.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no | Surface to build on |
| `force` | `ForceID` | no | Force to use for the building |
| `position` | `MapPosition` | no | The position to build at |
| `direction` | `defines.direction` | yes | The direction to use when building |
| `build_mode` | `defines.build_mode` | yes | If `normal`, blueprint will not be built if any one thing can't be built. If `forced`, anything that can be built is ... |
| `skip_fog_of_war` | `boolean` | yes | If chunks covered by fog-of-war are skipped. |
| `by_player` | `PlayerIdentification` | yes | The player to use if any. If provided [defines.events.on_built_entity](runtime:defines.events.on_built_entity) will a... |
| `raise_built` | `boolean` | yes | If true; [defines.events.script_raised_built](runtime:defines.events.script_raised_built) will be fired on successful... |

**Returns:**

- `array[LuaEntity]` — Array of created ghosts

### `create_blueprint(surface: SurfaceIdentification, force: ForceID, area: BoundingBox, ?always_include_tiles: boolean, ?include_entities: boolean, ?include_modules: boolean, ?include_station_names: boolean, ?include_trains: boolean, ?include_fuel: boolean) -> dict[uint32, LuaEntity]`

Sets up this blueprint using the found blueprintable entities/tiles on the surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no | Surface to create from |
| `force` | `ForceID` | no | Force to use for the creation |
| `area` | `BoundingBox` | no | The bounding box |
| `always_include_tiles` | `boolean` | yes | When true, blueprintable tiles are always included in the blueprint. When false they're only included if no entities ... |
| `include_entities` | `boolean` | yes | When true, entities are included in the blueprint. Defaults to true. |
| `include_modules` | `boolean` | yes | When true, modules are included in the blueprint. Defaults to true. |
| `include_station_names` | `boolean` | yes | When true, station names are included in the blueprint. Defaults to false. |
| `include_trains` | `boolean` | yes | When true, trains are included in the blueprint. Defaults to false. |
| `include_fuel` | `boolean` | yes | When true, train fuel is included in the blueprint, Defaults to true. |

**Returns:**

- `dict[uint32, LuaEntity]` — The blueprint entity index to source entity mapping.

### `get_blueprint_entity_tags(index: uint32) -> Tags`

Gets the tags for the given blueprint entity index in this blueprint.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `Tags` — 

### `set_blueprint_entity_tags(index: uint32, tags: Tags)`

Sets the tags on the given blueprint entity index in this blueprint.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The entity index |
| `tags` | `Tags` | no |  |

### `get_blueprint_entity_tag(index: uint32, tag: string) -> AnyBasic`

Gets the given tag on the given blueprint entity index in this blueprint.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The entity index. |
| `tag` | `string` | no | The tag to get. |

**Returns:**

- `AnyBasic` — 

### `set_blueprint_entity_tag(index: uint32, tag: string, value: AnyBasic)`

Sets the given tag on the given blueprint entity index in this blueprint.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The entity index. |
| `tag` | `string` | no | The tag to set. |
| `value` | `AnyBasic` | no | The tag value to set or `nil` to clear the tag. |

### `get_blueprint_entities() -> array[BlueprintEntity]`

The entities in this blueprint.

**Returns:**

- `array[BlueprintEntity]` — 

### `set_blueprint_entities(entities: array[BlueprintEntity])`

Set new entities to be a part of this blueprint.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entities` | `array[BlueprintEntity]` | no | The new blueprint entities. |

### `get_blueprint_tiles() -> array[Tile]`

A list of the tiles in this blueprint.

**Returns:**

- `array[Tile]` — 

### `set_blueprint_tiles(tiles: array[Tile])`

Set specific tiles in this blueprint.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tiles` | `array[Tile]` | no | Tiles to be a part of the blueprint. |

### `get_blueprint_entity_count() -> uint32`

Gets the number of entities in this blueprint blueprint.

**Returns:**

- `uint32` — 

### `get_active_index(player: PlayerIdentification) -> uint32`

The active index of this BlueprintBookRecord. For records in "my blueprints", the result will be the
same regardless of the player, but records in "game blueprints" may have different active indices
per player.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification` | no |  |

**Returns:**

- `uint32` — 

### `get_selected_record(player: PlayerIdentification) -> LuaRecord`

Gets the currently selected record of the book for the given player.  Note: this will return a
record even if the book is in a preview state.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification` | no |  |

**Returns:**

- `LuaRecord` — 

### `get_entity_filter(index: uint32) -> ItemFilter`

Gets the entity filter at the given index for this deconstruction planner.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `ItemFilter` — 

### `set_entity_filter(index: uint32, filter: ItemFilter | nil) -> boolean`

Sets the entity filter at the given index for this deconstruction planner.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |
| `filter` | `ItemFilter | nil` | no | Writing `nil` removes the filter. |

**Returns:**

- `boolean` — Whether the new filter was successfully set (ie. was valid).

### `get_tile_filter(index: uint32) -> string`

Gets the tile filter at the given index for this deconstruction planner.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `string` — 

### `set_tile_filter(index: uint32, filter: string | LuaTilePrototype | LuaTile) -> boolean`

Sets the tile filter at the given index for this deconstruction planner.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |
| `filter` | `string | LuaTilePrototype | LuaTile` | no | Setting to nil erases the filter. |

**Returns:**

- `boolean` — Whether the new filter was successfully set (ie. was valid).

### `deconstruct_area(surface: SurfaceIdentification, force: ForceID, area: BoundingBox, ?skip_fog_of_war: boolean, ?by_player: PlayerIdentification, ?super_forced: boolean)`

Deconstruct the given area with this deconstruction planner.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no | Surface to deconstruct on |
| `force` | `ForceID` | no | Force to use for the deconstruction |
| `area` | `BoundingBox` | no | The area to deconstruct |
| `skip_fog_of_war` | `boolean` | yes | If chunks covered by fog-of-war are skipped. Defaults to `false`. |
| `by_player` | `PlayerIdentification` | yes | The player to use if any. |
| `super_forced` | `boolean` | yes | If the deconstruction is super-forced. Defaults to `false`. |

### `cancel_deconstruct_area(surface: SurfaceIdentification, force: ForceID, area: BoundingBox, ?skip_fog_of_war: boolean, ?by_player: PlayerIdentification, ?super_forced: boolean)`

Cancel deconstruct the given area with this deconstruction planner.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no | Surface to cancel deconstruct on |
| `force` | `ForceID` | no | Force to use for canceling deconstruction |
| `area` | `BoundingBox` | no | The area to deconstruct |
| `skip_fog_of_war` | `boolean` | yes | If chunks covered by fog-of-war are skipped. Defaults to `false`. |
| `by_player` | `PlayerIdentification` | yes | The player to use if any. |
| `super_forced` | `boolean` | yes | If the cancel deconstruction is super-forced. Defaults to `false`. |

### `clear_deconstruction_data()`

Clears all settings/filters on this deconstruction planner, resetting it to default values.

### `clear_upgrade_data()`

Clears all settings/filters on this upgrade planner, resetting it to default values.

### `get_mapper(index: uint32, type: 'from' | 'to') -> UpgradeMapperSource | UpgradeMapperDestination`

Gets the filter at the given index for this upgrade item. Note that sources (`"from"` type) that are
undefined will read as `{type = "item"}`, while destinations (`"to"` type) that are undefined will
read as `nil`.  In contrast to [LuaRecord::set_mapper](runtime:LuaRecord::set_mapper), indices past
the upgrade item's current size are considered to be out of bounds.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the mapper to read. |
| `type` | `'from' | 'to'` | no |  |

**Returns:**

- `UpgradeMapperSource | UpgradeMapperDestination` — 

### `set_mapper(index: uint32, type: 'from' | 'to', mapper: UpgradeMapperSource | UpgradeMapperDestination | nil)`

Sets the module filter at the given index for this upgrade item.  In contrast to
[LuaRecord::get_mapper](runtime:LuaRecord::get_mapper), indices past the upgrade item's current size
are valid and expand the list of mappings accordingly, if within reasonable bounds.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the mapper to set. |
| `type` | `'from' | 'to'` | no |  |
| `mapper` | `UpgradeMapperSource | UpgradeMapperDestination | nil` | no | The mapper to set. Set `nil` to clear the mapper. |
