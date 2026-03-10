# LuaPrototypes

Provides read-only access to prototypes. It is accessible through the global object named
`prototypes`.

## Attributes

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

### `font` — `LuaCustomTable` (read-only)

A dictionary containing every LuaFontPrototype indexed by `name`.

### `map_gen_preset` — `LuaCustomTable` (read-only)

A dictionary containing every MapGenPreset indexed by `name`.  A MapGenPreset is an exact copy of
the prototype table provided from the data stage.

### `style` — `LuaCustomTable` (read-only)

A map of styles that [LuaGuiElement](runtime:LuaGuiElement) can use.  Maps from the style's name to
its type, as seen on [StyleSpecification](prototype:StyleSpecification).

### `utility_constants` — `LuaCustomTable` (read-only)

All utility constants.  See [UtilityConstants](prototype:UtilityConstants) for possible values.

### `entity` — `LuaCustomTable` (read-only)

A dictionary containing every LuaEntityPrototype indexed by `name`.

### `item` — `LuaCustomTable` (read-only)

A dictionary containing every LuaItemPrototype indexed by `name`.

### `fluid` — `LuaCustomTable` (read-only)

A dictionary containing every LuaFluidPrototype indexed by `name`.

### `tile` — `LuaCustomTable` (read-only)

A dictionary containing every LuaTilePrototype indexed by `name`.

### `equipment` — `LuaCustomTable` (read-only)

A dictionary containing every LuaEquipmentPrototype indexed by `name`.

### `damage` — `LuaCustomTable` (read-only)

A dictionary containing every LuaDamagePrototype indexed by `name`.

### `virtual_signal` — `LuaCustomTable` (read-only)

A dictionary containing every LuaVirtualSignalPrototype indexed by `name`.

### `equipment_grid` — `LuaCustomTable` (read-only)

A dictionary containing every LuaEquipmentGridPrototype indexed by `name`.

### `recipe` — `LuaCustomTable` (read-only)

A dictionary containing every LuaRecipePrototype indexed by `name`.

### `technology` — `LuaCustomTable` (read-only)

A dictionary containing every [LuaTechnologyPrototype](runtime:LuaTechnologyPrototype) indexed by
`name`.

### `decorative` — `LuaCustomTable` (read-only)

A dictionary containing every LuaDecorativePrototype indexed by `name`.

### `particle` — `LuaCustomTable` (read-only)

A dictionary containing every LuaParticlePrototype indexed by `name`.

### `autoplace_control` — `LuaCustomTable` (read-only)

A dictionary containing every LuaAutoplaceControlPrototype indexed by `name`.

### `mod_setting` — `LuaCustomTable` (read-only)

A dictionary containing every LuaModSettingPrototype indexed by `name`.

### `custom_input` — `LuaCustomTable` (read-only)

A dictionary containing every LuaCustomInputPrototype indexed by `name`.

### `ammo_category` — `LuaCustomTable` (read-only)

A dictionary containing every LuaAmmoCategoryPrototype indexed by `name`.

### `named_noise_expression` — `LuaCustomTable` (read-only)

A dictionary containing every LuaNamedNoiseExpression indexed by `name`.

### `named_noise_function` — `LuaCustomTable` (read-only)

A dictionary containing every LuaNamedNoiseFunction indexed by `name`.

### `item_subgroup` — `LuaCustomTable` (read-only)

A dictionary containing every ItemSubgroup indexed by `name`.

### `item_group` — `LuaCustomTable` (read-only)

A dictionary containing every ItemGroup indexed by `name`.

### `fuel_category` — `LuaCustomTable` (read-only)

A dictionary containing every LuaFuelCategoryPrototype indexed by `name`.

### `resource_category` — `LuaCustomTable` (read-only)

A dictionary containing every LuaResourceCategoryPrototype indexed by `name`.

### `achievement` — `LuaCustomTable` (read-only)

A dictionary containing every LuaAchievementPrototype indexed by `name`.

### `module_category` — `LuaCustomTable` (read-only)

A dictionary containing every LuaModuleCategoryPrototype indexed by `name`.

### `equipment_category` — `LuaCustomTable` (read-only)

A dictionary containing every LuaEquipmentCategoryPrototype indexed by `name`.

### `trivial_smoke` — `LuaCustomTable` (read-only)

A dictionary containing every LuaTrivialSmokePrototype indexed by `name`.

### `shortcut` — `LuaCustomTable` (read-only)

A dictionary containing every LuaShortcutPrototype indexed by `name`.

### `recipe_category` — `LuaCustomTable` (read-only)

A dictionary containing every LuaRecipeCategoryPrototype indexed by `name`.

### `quality` — `LuaCustomTable` (read-only)

### `surface_property` — `LuaCustomTable` (read-only)

### `space_location` — `LuaCustomTable` (read-only)

### `space_connection` — `LuaCustomTable` (read-only)

### `custom_event` — `LuaCustomTable` (read-only)

A dictionary containing every defined custom event, indexed by `name`.

### `active_trigger` — `LuaCustomTable` (read-only)

A dictionary containing every LuaActiveTriggerPrototype indexed by `name`.

### `asteroid_chunk` — `LuaCustomTable` (read-only)

A dictionary containing every LuaAsteroidChunkPrototype indexed by `name`.

### `collision_layer` — `LuaCustomTable` (read-only)

A dictionary containing every LuaCollisionLayerPrototype indexed by `name`.

### `airborne_pollutant` — `LuaCustomTable` (read-only)

A dictionary containing every LuaAirbornePollutantPrototype indexed by `name`.

### `burner_usage` — `LuaCustomTable` (read-only)

A dictionary containing every LuaBurnerUsagePrototype indexed by `name`.

### `mod_data` — `LuaCustomTable` (read-only)

A dictionary containing every LuaModData indexed by `name`.

### `surface` — `LuaCustomTable` (read-only)

A dictionary containing every LuaSurfacePrototype indexed by `name`.

### `procession` — `LuaCustomTable` (read-only)

A dictionary containing every LuaProcessionPrototype indexed by `name`.

### `procession_layer_inheritance_group` — `LuaCustomTable` (read-only)

A dictionary containing every LuaProcessionLayerInheritanceGroupPrototype indexed by `name`.

### `max_force_distraction_distance` — `double` (read-only)

### `max_force_distraction_chunk_distance` — `uint32` (read-only)

### `max_electric_pole_supply_area_distance` — `float` (read-only)

### `max_electric_pole_connection_distance` — `double` (read-only)

### `max_beacon_supply_area_distance` — `uint32` (read-only)

### `max_gate_activation_distance` — `double` (read-only)

### `max_inserter_reach_distance` — `double` (read-only)

### `max_pipe_to_ground_distance` — `uint8` (read-only)

### `max_underground_belt_distance` — `uint8` (read-only)

## Methods

### `get_entity_filtered(filters: array[EntityPrototypeFilter]) -> LuaCustomTable`

Returns a dictionary of all LuaEntityPrototypes that fit the given filters. The prototypes are
indexed by `name`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filters` | `array[EntityPrototypeFilter]` | no |  |

**Returns:**

- `LuaCustomTable` — 

### `get_item_filtered(filters: array[ItemPrototypeFilter]) -> LuaCustomTable`

Returns a dictionary of all LuaItemPrototypes that fit the given filters. The prototypes are indexed
by `name`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filters` | `array[ItemPrototypeFilter]` | no |  |

**Returns:**

- `LuaCustomTable` — 

### `get_equipment_filtered(filters: array[EquipmentPrototypeFilter]) -> LuaCustomTable`

Returns a dictionary of all LuaEquipmentPrototypes that fit the given filters. The prototypes are
indexed by `name`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filters` | `array[EquipmentPrototypeFilter]` | no |  |

**Returns:**

- `LuaCustomTable` — 

### `get_mod_setting_filtered(filters: array[ModSettingPrototypeFilter]) -> LuaCustomTable`

Returns a dictionary of all LuaModSettingPrototypes that fit the given filters. The prototypes are
indexed by `name`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filters` | `array[ModSettingPrototypeFilter]` | no |  |

**Returns:**

- `LuaCustomTable` — 

### `get_achievement_filtered(filters: array[AchievementPrototypeFilter]) -> LuaCustomTable`

Returns a dictionary of all LuaAchievementPrototypes that fit the given filters. The prototypes are
indexed by `name`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filters` | `array[AchievementPrototypeFilter]` | no |  |

**Returns:**

- `LuaCustomTable` — 

### `get_tile_filtered(filters: array[TilePrototypeFilter]) -> LuaCustomTable`

Returns a dictionary of all LuaTilePrototypes that fit the given filters. The prototypes are indexed
by `name`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filters` | `array[TilePrototypeFilter]` | no |  |

**Returns:**

- `LuaCustomTable` — 

### `get_decorative_filtered(filters: array[DecorativePrototypeFilter]) -> LuaCustomTable`

Returns a dictionary of all LuaDecorativePrototypes that fit the given filters. The prototypes are
indexed by `name`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filters` | `array[DecorativePrototypeFilter]` | no |  |

**Returns:**

- `LuaCustomTable` — 

### `get_fluid_filtered(filters: array[FluidPrototypeFilter]) -> LuaCustomTable`

Returns a dictionary of all LuaFluidPrototypes that fit the given filters. The prototypes are
indexed by `name`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filters` | `array[FluidPrototypeFilter]` | no |  |

**Returns:**

- `LuaCustomTable` — 

### `get_recipe_filtered(filters: array[RecipePrototypeFilter]) -> LuaCustomTable`

Returns a dictionary of all LuaRecipePrototypes that fit the given filters. The prototypes are
indexed by `name`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filters` | `array[RecipePrototypeFilter]` | no |  |

**Returns:**

- `LuaCustomTable` — 

### `get_technology_filtered(filters: array[TechnologyPrototypeFilter]) -> LuaCustomTable`

Returns a dictionary of all LuaTechnologyPrototypes that fit the given filters. The prototypes are
indexed by `name`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filters` | `array[TechnologyPrototypeFilter]` | no |  |

**Returns:**

- `LuaCustomTable` — 

### `get_history(type: string, name: string) -> PrototypeHistory`

Gets the prototype history for the given type and name.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `string` | no |  |
| `name` | `string` | no |  |

**Returns:**

- `PrototypeHistory` — 
