# LuaItemPrototype

Prototype of an item. For example, an item prototype can be obtained from
[LuaPrototypes::item](runtime:LuaPrototypes::item) by its name: `prototypes.item["iron-plate"]`.

## Attributes

### `place_result` — `LuaEntityPrototype` (read-only) *(optional)*

Prototype of the entity that will be created by placing this item, if any.

### `place_as_equipment_result` — `LuaEquipmentPrototype` (read-only) *(optional)*

Prototype of the equipment that will be created by placing this item in an equipment grid, if any.

### `place_as_tile_result` — `PlaceAsTileResult` (read-only) *(optional)*

The place-as-tile result if one is defined, if any.

### `stackable` — `boolean` (read-only)

Is this item allowed to stack at all?

### `stack_size` — `uint32` (read-only)

Maximum stack size of the item specified by this prototype.

### `fuel_category` — `string` (read-only) *(optional)*

The fuel category, if any.

### `burnt_result` — `LuaItemPrototype` (read-only) *(optional)*

The result of burning this item as fuel, if any.

### `fuel_value` — `float` (read-only)

Fuel value when burned.

### `fuel_acceleration_multiplier` — `double` (read-only)

The acceleration multiplier when this item is used as fuel in a vehicle.

### `fuel_top_speed_multiplier` — `double` (read-only)

The fuel top speed multiplier when this item is used as fuel in a vehicle.

### `fuel_emissions_multiplier` — `double` (read-only)

The emissions multiplier if this is used as fuel.

### `fuel_acceleration_multiplier_quality_bonus` — `double` (read-only)

Additional fuel acceleration multiplier per quality level.

### `fuel_top_speed_multiplier_quality_bonus` — `double` (read-only)

Additional fuel top speed multiplier per quality level.

### `flags` — `ItemPrototypeFlags` (read-only)

The flags for this item prototype.

### `rocket_launch_products` — `array[Product]` (read-only)

The results of launching this item in a rocket.

### `send_to_orbit_mode` — `'not-sendable' | 'manual' | 'automated'` (read-only)

How this item interacts when being sent to orbit.

### `can_be_mod_opened` — `boolean` (read-only)

If this item can be mod-opened.

### `spoil_result` — `LuaItemPrototype` (read-only) *(optional)*

The spoil result of this item, if any

### `plant_result` — `LuaEntityPrototype` (read-only) *(optional)*

The result entity when planting this item as a seed.

### `spoil_to_trigger_result` — `SpoilToTriggerResult` (read-only) *(optional)*

### `destroyed_by_dropping_trigger` — `array[TriggerItem]` (read-only) *(optional)*

### `weight` — `Weight` (read-only)

Weight of this item. More information on how item weight is determined can be found on its
[auxiliary page](runtime:item-weight).

### `ingredient_to_weight_coefficient` — `double` (read-only)

### `fuel_glow_color` — `Color` (read-only) *(optional)*

### `default_import_location` — `LuaSpaceLocationPrototype` (read-only)

### `factoriopedia_alternative` — `LuaItemPrototype` (read-only) *(optional)*

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### `moved_to_hub_when_building` — `boolean` (read-only)

### `ammo_category` — `LuaAmmoCategoryPrototype` (read-only) *(optional)*

### `magazine_size` — `float` (read-only) *(optional)*

Size of full magazine.

### `reload_time` — `float` (read-only) *(optional)*

Amount of extra time (in ticks) it takes to reload the weapon after depleting the magazine.

### `equipment_grid` — `LuaEquipmentGridPrototype` (read-only) *(optional)*

The prototype of this armor's equipment grid, if any.

### `resistances` — `dict[string, Resistance]` (read-only) *(optional)*

Resistances of this armor item, if any, indexed by damage type name.

### `collision_box` — `BoundingBox` (read-only) *(optional)*

The collision box used by character entities when wearing this armor.

### `drawing_box` — `BoundingBox` (read-only) *(optional)*

The drawing box used by character entities when wearing this armor.

### `provides_flight` — `boolean` (read-only) *(optional)*

If this armor provides flight to character entities when worm.

### `capsule_action` — `CapsuleAction` (read-only) *(optional)*

The capsule action for this capsule item prototype.

### `radius_color` — `Color` (read-only) *(optional)*

### `attack_parameters` — `AttackParameters` (read-only) *(optional)*

The gun attack parameters.

### `inventory_size` — `uint32` (read-only) *(optional)*

The main inventory size for item-with-inventory-prototype.

### `item_filters` — `array[LuaItemPrototype]` (read-only) *(optional)*

### `item_group_filters` — `array[LuaGroup]` (read-only) *(optional)*

### `item_subgroup_filters` — `array[LuaGroup]` (read-only) *(optional)*

### `filter_mode` — `PrototypeFilterMode` (read-only) *(optional)*

The filter mode used by this item with inventory.

### `localised_filter_message` — `LocalisedString` (read-only) *(optional)*

The localised string used when the player attempts to put items into this item with inventory that
aren't allowed.

### `default_label_color` — `Color` (read-only) *(optional)*

The default label color used for this item with label, if any.

### `draw_label_for_cursor_render` — `boolean` (read-only) *(optional)*

If true, and this item with label has a label it is drawn in place of the normal number when held in
the cursor.

### `speed` — `float` (read-only) *(optional)*

The repairing speed if this is a repairing tool.

### `module_effects` — `ModuleEffects` (read-only) *(optional)*

Effects of this module.

### `category` — `string` (read-only) *(optional)*

The name of a [LuaModuleCategoryPrototype](runtime:LuaModuleCategoryPrototype). Used when upgrading
modules: Ctrl + click modules into an entity and it will replace lower tier modules of the same
category with higher tier modules.

### `tier` — `uint32` (read-only) *(optional)*

Tier of the module inside its category. Used when upgrading modules: Ctrl + click modules into an
entity and it will replace lower tier modules with higher tier modules if they have the same
category.

### `requires_beacon_alt_mode` — `boolean` (read-only) *(optional)*

### `beacon_tint` — `array[Color]` (read-only) *(optional)*

### `rails` — `array[LuaEntityPrototype]` (read-only) *(optional)*

Prototypes of all rails possible to be used by this rail planner prototype.

### `support` — `LuaEntityPrototype` (read-only) *(optional)*

The rail support used by this rail planner.

### `manual_length_limit` — `double` (read-only) *(optional)*

### `always_include_tiles` — `boolean` (read-only) *(optional)*

If tiles area always included when doing selection with this selection tool prototype.

### `skip_fog_of_war` — `boolean` (read-only) *(optional)*

If this selection tool skips things covered by fog of war.

### `entity_filter_slots` — `uint32` (read-only) *(optional)*

The number of entity filters this deconstruction item has.

### `tile_filter_slots` — `uint32` (read-only) *(optional)*

The number of tile filters this deconstruction item has.

### `durability_description_key` — `string` (read-only) *(optional)*

The durability message key used when displaying the durability of this tool.

### `factoriopedia_durability_description_key` — `string` (read-only) *(optional)*

The durability message key used when displaying the durability of this tool in Factoriopedia.

### `durability_description_value` — `string` (read-only) *(optional)*

The durability message value used when displaying the durability of this tool.

### `infinite` — `boolean` (read-only) *(optional)*

If this tool item has infinite durability.

### `trigger` — `TriggerItem` (read-only) *(optional)*

### `surface` — `LuaSurfacePrototype` (read-only) *(optional)*

### `create_electric_network` — `boolean` (read-only) *(optional)*

### `tiles` — `array[SpacePlatformTileDefinition]` (read-only) *(optional)*

### `initial_items` — `array[ItemProduct]` (read-only) *(optional)*

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

### `has_flag(flag: ItemPrototypeFlag) -> boolean`

Test whether this item prototype has a certain flag set.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `flag` | `ItemPrototypeFlag` | no | The flag to test. |

**Returns:**

- `boolean` — 

### `get_spoil_ticks(?quality: QualityID) -> uint32`

The number of ticks before this item spoils, or `0` if it does not spoil.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `uint32` — 

### `get_ammo_type(?ammo_source_type: 'default' | 'player' | 'turret' | 'vehicle') -> AmmoType`

The type of this ammo prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ammo_source_type` | `'default' | 'player' | 'turret' | 'vehicle'` | yes | Defaults to `"default"`. |

**Returns:**

- `AmmoType` — 

### `get_inventory_size_bonus(?quality: QualityID) -> uint32`

The inventory size bonus for this armor prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `uint32` — 

### `get_module_effects(?quality: QualityID) -> ModuleEffects`

Effects of this module at the specified quality.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `ModuleEffects` — 

### `get_selection_border_color(selection_mode: defines.selection_mode) -> Color`

The color used when doing normal selection with this selection tool prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `selection_mode` | `defines.selection_mode` | no |  |

**Returns:**

- `Color` — 

### `get_selection_mode_flags(selection_mode: defines.selection_mode) -> SelectionModeFlags`

Flags that affect which entities will be selected.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `selection_mode` | `defines.selection_mode` | no |  |

**Returns:**

- `SelectionModeFlags` — 

### `get_cursor_box_type(selection_mode: defines.selection_mode) -> CursorBoxRenderType`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `selection_mode` | `defines.selection_mode` | no |  |

**Returns:**

- `CursorBoxRenderType` — 

### `get_entity_filter_mode(selection_mode: defines.selection_mode) -> PrototypeFilterMode`

The entity filter mode used by this selection tool.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `selection_mode` | `defines.selection_mode` | no |  |

**Returns:**

- `PrototypeFilterMode` — 

### `get_tile_filter_mode(selection_mode: defines.selection_mode) -> PrototypeFilterMode`

The tile filter mode used by this selection tool.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `selection_mode` | `defines.selection_mode` | no |  |

**Returns:**

- `PrototypeFilterMode` — 

### `get_entity_filters(selection_mode: defines.selection_mode) -> array[LuaEntityPrototype]`

The entity filters used by this selection tool.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `selection_mode` | `defines.selection_mode` | no |  |

**Returns:**

- `array[LuaEntityPrototype]` — 

### `get_entity_type_filters(selection_mode: defines.selection_mode) -> dict[string, True]`

The entity type filters used by this selection tool indexed by entity type.  The boolean value is
meaningless and is used to allow easy lookup if a type exists in the dictionary.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `selection_mode` | `defines.selection_mode` | no |  |

**Returns:**

- `dict[string, True]` — 

### `get_tile_filters(selection_mode: defines.selection_mode) -> array[LuaTilePrototype]`

The tile filters used by this selection tool.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `selection_mode` | `defines.selection_mode` | no |  |

**Returns:**

- `array[LuaTilePrototype]` — 

### `get_durability(?quality: QualityID) -> double`

The durability of this tool item prototype.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes |  |

**Returns:**

- `double` — 
