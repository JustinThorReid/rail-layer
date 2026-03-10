# LuaItemCommon

Common methods related to usage of item with data. It is useful when LuaItemStack contains item with
data or in general with LuaItem as it can only point at an item with data.

## Attributes

### `is_blueprint` — `boolean` (read-only)

If this is a blueprint item.

### `is_blueprint_book` — `boolean` (read-only)

If this is a blueprint book item.

### `is_item_with_label` — `boolean` (read-only)

If this is an item with label item.

### `is_item_with_inventory` — `boolean` (read-only)

If this is an item with inventory item.

### `is_item_with_entity_data` — `boolean` (read-only)

If this is an item with entity data item.

### `is_selection_tool` — `boolean` (read-only)

If this is a selection tool item.

### `is_item_with_tags` — `boolean` (read-only)

If this is an item with tags item.

### `is_deconstruction_item` — `boolean` (read-only)

If this is a deconstruction tool item.

### `is_upgrade_item` — `boolean` (read-only)

If this is a upgrade item.

### `is_tool` — `boolean` (read-only)

If this is a tool item.

### `is_ammo` — `boolean` (read-only)

If this is an ammo item.

### `is_armor` — `boolean` (read-only)

If this is an armor item.

### `is_repair_tool` — `boolean` (read-only)

If this is a repair tool item.

### `item_number` — `uint64` (read-only) *(optional)*

The unique identifier for this item, if any. Note that this ID stays the same no matter where the
item is moved to.

### `preview_icons` — `array[BlueprintSignalIcon]` *(optional)*

Icons of this blueprint item, blueprint book, deconstruction item or upgrade planner. An item that
doesn't have icons returns `nil` on read and throws error on write.

### `grid` — `LuaEquipmentGrid` (read-only) *(optional)*

The equipment grid of this item, if any.

### `owner_location` — `ItemLocationData` (read-only)

The location of this item if it can be found.

### `blueprint_snap_to_grid` — `TilePosition` *(optional)*

The snapping grid size in this blueprint item. `nil` if snapping is not enabled.

### `blueprint_position_relative_to_grid` — `TilePosition` *(optional)*

The offset from the absolute grid. `nil` if absolute snapping is not enabled.

### `blueprint_absolute_snapping` — `boolean`

If absolute snapping is enabled on this blueprint item.

### `blueprint_description` — `string`

The description for this blueprint or blueprint book

### `cost_to_build` — `ItemWithQualityCounts` (read-only)

List of raw materials required to build this blueprint.

### `default_icons` — `array[BlueprintSignalIcon]` (read-only)

The default icons for a blueprint item.

### `active_index` — `uint32` *(optional)*

The active blueprint index for this blueprint book. `nil` if this blueprint book is empty.

### `label` — `string` *(optional)*

The current label for this item, if any.

### `label_color` — `Color` *(optional)*

The current label color for this item, if any.

### `allow_manual_label_change` — `boolean`

Whether the label for this item can be manually changed. When false the label can only be changed
through the API.

### `entity_label` — `string` *(optional)*

If this is an item with entity data, get the stored entity label.

### `entity_color` — `Color` *(optional)*

If this is an item with entity data, get the stored entity color.

### `entity_logistic_sections` — `LogisticSections`

If this is an item with entity data, get the stored logistic filters.

### `entity_request_from_buffers` — `boolean`

If this is an item with entity data, get the stored request from buffer state.

### `entity_logistics_enabled` — `boolean`

If this is an item with entity data, get the stored vehicle logistics enabled state.

### `entity_enable_logistics_while_moving` — `boolean`

If this is an item with entity data, get the stored enable logistics while moving state.

### `entity_driver_is_gunner` — `boolean`

If this is an item with entity data, get the stored driver is gunner state.

### `entity_auto_target_without_gunner` — `boolean`

If this is an item with entity data, get the stored auto target without gunner state.

### `entity_auto_target_with_gunner` — `boolean`

If this is an item with entity data, get the stored auto target with gunner state.

### `tags` — `Tags`

### `custom_description` — `LocalisedString`

The custom description this item-with-tags. This is shown over the normal item description if this
is set to a non-empty value.

### `entity_filter_count` — `uint32` (read-only)

The number of entity filters this deconstruction item supports.

### `entity_filters` — `array[ItemFilter]`

The entity filters for this deconstruction item. The attribute is a sparse array with the keys
representing the index of the filter. All prototypes in this array must not have the `"not-
deconstructable"` flag set and are either a `cliff` or marked as `minable`.

### `tile_filter_count` — `uint32` (read-only)

The number of tile filters this deconstruction item supports.

### `tile_filters` — `array[TileID]`

The tile filters for this deconstruction item. The attribute is a sparse array with the keys
representing the index of the filter. Reading filters always returns an array of strings which are
the tile prototype names.

### `entity_filter_mode` — `defines.deconstruction_item.entity_filter_mode`

The blacklist/whitelist entity filter mode for this deconstruction item.

### `tile_filter_mode` — `defines.deconstruction_item.tile_filter_mode`

The blacklist/whitelist tile filter mode for this deconstruction item.

### `tile_selection_mode` — `defines.deconstruction_item.tile_selection_mode`

The tile selection mode for this deconstruction item.

### `trees_and_rocks_only` — `boolean`

If this deconstruction item is set to allow trees and rocks only.

### `mapper_count` — `uint32` (read-only)

The current count of mappers in the upgrade item.

### `durability` — `double`

Durability of the contained item. Automatically capped at the item's maximum durability.

### `ammo` — `uint32`

Number of bullets left in the magazine.

## Methods

### `get_inventory(inventory: defines.inventory) -> LuaInventory`

Access the inner inventory of an item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory` | `defines.inventory` | no | Index of the inventory to access, which can only be [defines.inventory.item_main](runtime:defines.inventory.item_main). |

**Returns:**

- `LuaInventory` — `nil` if there is no inventory with the given index.

### `clear_blueprint()`

Clears this blueprint item.

### `is_blueprint_setup() -> boolean`

Is this blueprint item setup? I.e. is it a non-empty blueprint?

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

Gets the tags for the given blueprint entity index in this blueprint item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `Tags` — 

### `set_blueprint_entity_tags(index: uint32, tags: Tags)`

Sets the tags on the given blueprint entity index in this blueprint item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The entity index |
| `tags` | `Tags` | no |  |

### `get_blueprint_entity_tag(index: uint32, tag: string) -> AnyBasic`

Gets the given tag on the given blueprint entity index in this blueprint item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The entity index. |
| `tag` | `string` | no | The tag to get. |

**Returns:**

- `AnyBasic` — 

### `set_blueprint_entity_tag(index: uint32, tag: string, value: AnyBasic)`

Sets the given tag on the given blueprint entity index in this blueprint item.

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

Gets the number of entities in this blueprint item.

**Returns:**

- `uint32` — 

### `get_tag(tag_name: string) -> AnyBasic`

Gets the tag with the given name or returns `nil` if it doesn't exist.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tag_name` | `string` | no |  |

**Returns:**

- `AnyBasic` — 

### `set_tag(tag_name: string, tag: AnyBasic)`

Sets the tag with the given name and value.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tag_name` | `string` | no |  |
| `tag` | `AnyBasic` | no |  |

### `remove_tag(tag: string) -> boolean`

Removes a tag with the given name.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tag` | `string` | no |  |

**Returns:**

- `boolean` — If the tag existed and was removed.

### `get_entity_filter(index: uint32) -> ItemFilter`

Gets the entity filter at the given index for this deconstruction item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `ItemFilter` — 

### `set_entity_filter(index: uint32, filter: ItemFilter | nil) -> boolean`

Sets the entity filter at the given index for this deconstruction item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |
| `filter` | `ItemFilter | nil` | no | Writing `nil` removes the filter. |

**Returns:**

- `boolean` — Whether the new filter was successfully set (meaning it was valid).

### `get_tile_filter(index: uint32) -> string`

Gets the tile filter at the given index for this deconstruction item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `string` — 

### `set_tile_filter(index: uint32, filter: string | LuaTilePrototype | LuaTile | nil) -> boolean`

Sets the tile filter at the given index for this deconstruction item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |
| `filter` | `string | LuaTilePrototype | LuaTile | nil` | no | Writing `nil` removes the filter. |

**Returns:**

- `boolean` — Whether the new filter was successfully set (meaning it was valid).

### `deconstruct_area(surface: SurfaceIdentification, force: ForceID, area: BoundingBox, ?skip_fog_of_war: boolean, ?by_player: PlayerIdentification, ?super_forced: boolean)`

Deconstruct the given area with this deconstruction item.

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

Cancel deconstruct the given area with this deconstruction item.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no | Surface to cancel deconstruct on |
| `force` | `ForceID` | no | Force to use for canceling deconstruction |
| `area` | `BoundingBox` | no | The area to deconstruct |
| `skip_fog_of_war` | `boolean` | yes | If chunks covered by fog-of-war are skipped. Defaults to `false`. |
| `by_player` | `PlayerIdentification` | yes | The player to use if any. |
| `super_forced` | `boolean` | yes | If the cancel deconstruction is super-forced. Defaults to `false`. |

### `clear_deconstruction_item()`

Clears all settings/filters on this deconstruction item resetting it to default values.

### `clear_upgrade_item()`

Clears all settings/filters on this upgrade item resetting it to default values.

### `get_mapper(index: uint32, type: 'from' | 'to') -> UpgradeMapperSource | UpgradeMapperDestination`

Gets the filter at the given index for this upgrade item. Note that sources (`"from"` type) that are
undefined will read as `{type = "item"}`, while destinations (`"to"` type) that are undefined will
read as `nil`.  In contrast to [LuaItemCommon::set_mapper](runtime:LuaItemCommon::set_mapper),
indices past the upgrade item's current size are considered to be out of bounds.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the mapper to read. |
| `type` | `'from' | 'to'` | no |  |

**Returns:**

- `UpgradeMapperSource | UpgradeMapperDestination` — 

### `set_mapper(index: uint32, type: 'from' | 'to', mapper: UpgradeMapperSource | UpgradeMapperDestination | nil)`

Sets the module filter at the given index for this upgrade item.  In contrast to
[LuaItemCommon::get_mapper](runtime:LuaItemCommon::get_mapper), indices past the upgrade item's
current size are valid and expand the list of mappings accordingly, if within reasonable bounds.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the mapper to set. |
| `type` | `'from' | 'to'` | no |  |
| `mapper` | `UpgradeMapperSource | UpgradeMapperDestination | nil` | no | The mapper to set. Set `nil` to clear the mapper. |
