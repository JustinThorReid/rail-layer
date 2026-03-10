# LuaEquipmentGrid

An equipment grid is for example the inside of a power armor.

## Attributes

### `prototype` — `LuaEquipmentGridPrototype` (read-only)

### `width` — `uint32` (read-only)

Width of the equipment grid.

### `height` — `uint32` (read-only)

Height of the equipment grid.

### `equipment` — `array[LuaEquipment]` (read-only)

All the equipment in this grid.

### `max_solar_energy` — `double` (read-only)

Maximum energy per tick that can be created by all solar panels in the equipment grid on the current
surface. Actual generated energy varies depending on the daylight levels.

### `available_in_batteries` — `double` (read-only)

The total energy stored in all batteries in the equipment grid.

### `battery_capacity` — `double` (read-only)

Total energy storage capacity of all batteries in the equipment grid.

### `shield` — `float` (read-only)

The amount of shield hitpoints this equipment grid currently has across all shield equipment.

### `max_shield` — `float` (read-only)

The maximum amount of shield hitpoints this equipment grid has across all shield equipment.

### `inventory_bonus` — `uint32` (read-only)

The total amount of inventory bonus this equipment grid gives.

### `movement_bonus` — `double` (read-only)

The total amount of movement bonus this equipment grid gives.  Returns `0` if
[LuaEquipmentGrid::inhibit_movement_bonus](runtime:LuaEquipmentGrid::inhibit_movement_bonus) is
`true`.

### `inhibit_movement_bonus` — `boolean`

Whether this grid's equipment movement bonus is active.

### `unique_id` — `uint32` (read-only)

Unique identifier of this equipment grid.

### `entity_owner` — `LuaEntity` (read-only) *(optional)*

The entity that this equipment grid is owned by (in some inventory or item stack.)  If the owning
entity is a character owned by some player and the player is disconnected this will return `nil`.

### `player_owner` — `LuaPlayer` (read-only) *(optional)*

The player that this equipment grid is owned by (in some inventory or item stack.)

### `itemstack_owner` — `LuaItemStack` (read-only) *(optional)*

The item stack that this equipment grid is owned by.

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

### `take(?position: EquipmentPosition, ?equipment: LuaEquipment, ?by_player: PlayerIdentification) -> ItemWithQualityCount`

Remove an equipment from the grid.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `EquipmentPosition` | yes | Take the equipment that contains this position in the grid. |
| `equipment` | `LuaEquipment` | yes | Take this exact equipment. |
| `by_player` | `PlayerIdentification` | yes | If provided the action is done 'as' this player and [on_player_removed_equipment](runtime:on_player_removed_equipment... |

**Returns:**

- `ItemWithQualityCount` — The removed equipment, or `nil` if no equipment was removed.

### `take_all(?by_player: PlayerIdentification) -> ItemWithQualityCounts`

Remove all equipment from the grid.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `by_player` | `PlayerIdentification` | yes | If provided, the action is done 'as' this player and [on_player_removed_equipment](runtime:on_player_removed_equipmen... |

**Returns:**

- `ItemWithQualityCounts` — List of the equipment that has been removed.

### `clear(?by_player: PlayerIdentification)`

Clear all equipment from the grid, removing it without actually returning it.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `by_player` | `PlayerIdentification` | yes | If provided, the action is done 'as' this player and [on_player_removed_equipment](runtime:on_player_removed_equipmen... |

### `put(name: EquipmentID, ?quality: QualityID, ?position: EquipmentPosition, ?by_player: PlayerIdentification, ?ghost: boolean) -> LuaEquipment`

Insert an equipment into the grid.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `EquipmentID` | no | Equipment prototype name |
| `quality` | `QualityID` | yes | The quality, `nil` for any or if not provided `normal` is used. |
| `position` | `EquipmentPosition` | yes | Grid position to put the equipment in. |
| `by_player` | `PlayerIdentification` | yes | If provided the action is done 'as' this player and [on_player_placed_equipment](runtime:on_player_placed_equipment) ... |
| `ghost` | `boolean` | yes | If true, place the equipment as a ghost. |

**Returns:**

- `LuaEquipment` — The newly-added equipment, or `nil` if the equipment could not be added.

### `can_move(equipment: LuaEquipment, position: EquipmentPosition) -> boolean`

Check whether moving an equipment would succeed.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `equipment` | `LuaEquipment` | no | The equipment to move |
| `position` | `EquipmentPosition` | no | Where to put it |

**Returns:**

- `boolean` — 

### `move(equipment: LuaEquipment, position: EquipmentPosition) -> boolean`

Move an equipment within this grid.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `equipment` | `LuaEquipment` | no | The equipment to move |
| `position` | `EquipmentPosition` | no | Where to put it |

**Returns:**

- `boolean` — `true` if the equipment was successfully moved.

### `get(position: EquipmentPosition) -> LuaEquipment`

Find equipment in the Equipment Grid colliding with this position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `EquipmentPosition` | no | The position |

**Returns:**

- `LuaEquipment` — The found equipment, or `nil` if equipment occupying the given position could not be found.

### `get_contents() -> array[EquipmentWithQualityCounts]`

Get counts of all equipment in this grid.

**Returns:**

- `array[EquipmentWithQualityCounts]` — List of all equipment in the grid.

### `get_generator_energy(?quality: QualityID) -> double`

Total energy per tick generated by the equipment inside this grid.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | yes | Defaults to `"normal"`. |

**Returns:**

- `double` — 

### `find(equipment: EquipmentWithQualityID, ?search_ghosts: boolean) -> LuaEquipment`

Find equipment by name.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `equipment` | `EquipmentWithQualityID` | no | Prototype of the equipment to find. |
| `search_ghosts` | `boolean` | yes | If ghosts inner equipment should be searched. Defaults to `false` |

**Returns:**

- `LuaEquipment` — The first found equipment, or `nil` if equipment could not be found.

### `count(?equipment: EquipmentWithQualityID) -> uint32`

Get the number of all or some equipment in this grid.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `equipment` | `EquipmentWithQualityID` | yes | The equipment to count. If not specified, count all equipment. |

**Returns:**

- `uint32` — 

### `revive(equipment: LuaEquipment) -> LuaEquipment`

Revives the given equipment ghost if possible.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `equipment` | `LuaEquipment` | no | The equipment ghost to revive. |

**Returns:**

- `LuaEquipment` — 

### `order_removal(equipment: LuaEquipment) -> boolean`

Marks the given equipment for removal. If the given equipment is a ghost it is removed.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `equipment` | `LuaEquipment` | no |  |

**Returns:**

- `boolean` — If the equipment was successfully marked for removal (or in the case of a ghost; removed.)

### `cancel_removal(equipment: LuaEquipment) -> boolean`

Cancels removal for the given equipment.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `equipment` | `LuaEquipment` | no |  |

**Returns:**

- `boolean` — If the equipment removal was successfully cancelled.
