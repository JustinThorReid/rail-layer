# LuaControl

This is an abstract base class containing the common functionality between
[LuaPlayer](runtime:LuaPlayer) and entities (see [LuaEntity](runtime:LuaEntity)). When accessing
player-related functions through a [LuaEntity](runtime:LuaEntity), it must refer to a character
entity.

## Attributes

### `surface` — `LuaSurface` (read-only)

The surface this entity is currently on.

### `surface_index` — `uint32` (read-only)

Unique [index](runtime:LuaSurface::index) (ID) associated with the surface this entity is currently
on.

### `position` — `MapPosition` (read-only)

The current position of the entity.

### `render_position` — `MapPosition` (read-only)

The current render position of the entity.

### `is_flying` — `boolean` (read-only)

If this player or character entity is flying.  When called on an entity, only valid if this entity
is a character.

### `flight_height` — `double` (read-only)

The current flight height for this player or character entity.  When called on an entity, only valid
if this entity is a character.

### `vehicle` — `LuaEntity` (read-only) *(optional)*

The vehicle the player is currently sitting in.

### `cargo_pod` — `LuaEntity` (read-only) *(optional)*

The cargo pod the player is currently sitting in or the cargo pod attached to this rocket silo.

### `hub` — `LuaEntity` (read-only) *(optional)*

The space platform hub the player is currently sitting in.

### `force` — `LuaForce` (read) / `ForceID` (write)

The force of this entity. Reading will always give a [LuaForce](runtime:LuaForce), but it is
possible to assign either [string](runtime:string), [uint8](runtime:uint8) or
[LuaForce](runtime:LuaForce) to this attribute to change the force.

### `force_index` — `uint32` (read-only)

Unique [index](runtime:LuaForce::index) (ID) associated with the force of this entity.

### `selected` — `LuaEntity` *(optional)*

The currently selected entity. Assigning an entity will select it if is selectable, otherwise the
selection is cleared.

### `opened` — `LuaEntity | LuaItemStack | LuaEquipment | LuaEquipmentGrid | LuaPlayer | LuaGuiElement | LuaInventory | LuaLogisticNetwork | LuaItemStack | defines.gui_type` *(optional)*

The GUI the player currently has open.  This is the GUI that will asked to close (by firing the
[on_gui_closed](runtime:on_gui_closed) event) when the `Esc` or `E` keys are pressed. If this
attribute is non-nil, then writing `nil` or a new GUI to it will ask the existing GUI to close.
Write supports any of the types. Read will return the `entity`, `equipment`, `equipment-grid`,
`player`, `element`, `inventory`, `item` or `nil`.

### `crafting_queue_size` — `uint32` (read-only)

Size of the crafting queue.

### `crafting_queue_progress` — `double`

The crafting queue progress in the range `[0-1]`. `0` when no recipe is being crafted.

### `walking_state` — `{direction: defines.direction, walking: boolean}`

Current walking state of the player, or the spider-vehicle the character is driving.

### `riding_state` — `RidingState`

Current riding state of this car, or of the car this player is riding in.

### `mining_state` — `{mining: boolean, position: MapPosition}`

Current mining state.  When the player isn't mining tiles the player will mine whatever entity is
currently selected. See [LuaControl::selected](runtime:LuaControl::selected) and
[LuaControl::update_selected_entity](runtime:LuaControl::update_selected_entity).

### `shooting_state` — `{position: MapPosition, state: defines.shooting}`

Current shooting state.

### `picking_state` — `boolean`

Current item-picking state.

### `repair_state` — `{position: MapPosition, repairing: boolean}`

Current repair state.

### `cursor_stack` — `LuaItemStack` (read-only) *(optional)*

The player's cursor stack. `nil` if the player controller is a spectator.

### `cursor_ghost` — `ItemIDAndQualityIDPair` (read) / `ItemWithQualityID` (write) *(optional)*

The ghost prototype in the player's cursor.  Items in the cursor stack will take priority over the
cursor ghost.

### `cursor_record` — `LuaRecord` (read-only) *(optional)*

The blueprint record in the player's cursor.

### `driving` — `boolean`

`true` if the player is in a vehicle. Writing to this attribute puts the player in or out of a
vehicle.

### `crafting_queue` — `array[CraftingQueueItem]` (read-only) *(optional)*

The current crafting queue items.

### `following_robots` — `array[LuaEntity]` (read-only)

The current combat robots following the character.  When called on a [LuaPlayer](runtime:LuaPlayer),
it must be associated with a character (see [LuaPlayer::character](runtime:LuaPlayer::character)).

### `cheat_mode` — `boolean`

When `true` hand crafting is free and instant.

### `character_crafting_speed_modifier` — `double`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_mining_speed_modifier` — `double`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_additional_mining_categories` — `array[string]`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_running_speed_modifier` — `double`

Modifies the running speed of this character by the given value as a percentage. Setting the running
modifier to `0.5` makes the character run 50% faster. The minimum value of `-1` reduces the movement
speed by 100%, resulting in a speed of `0`.  When called on a [LuaPlayer](runtime:LuaPlayer), it
must be associated with a character (see [LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_build_distance_bonus` — `uint32`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_item_drop_distance_bonus` — `uint32`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_reach_distance_bonus` — `uint32`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_resource_reach_distance_bonus` — `uint32`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_item_pickup_distance_bonus` — `uint32`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_loot_pickup_distance_bonus` — `uint32`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_inventory_slots_bonus` — `uint32`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_trash_slot_count_bonus` — `uint32`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_maximum_following_robot_count_bonus` — `uint32`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `character_health_bonus` — `float`

When called on a [LuaPlayer](runtime:LuaPlayer), it must be associated with a character (see
[LuaPlayer::character](runtime:LuaPlayer::character)).

### `opened_gui_type` — `defines.gui_type` (read-only) *(optional)*

### `build_distance` — `uint32` (read-only)

The build distance of this character or max uint when not a character or player connected to a
character.

### `drop_item_distance` — `uint32` (read-only)

The item drop distance of this character or max uint when not a character or player connected to a
character.

### `reach_distance` — `uint32` (read-only)

The reach distance of this character or max uint when not a character or player connected to a
character.

### `item_pickup_distance` — `double` (read-only)

The item pickup distance of this character or max double when not a character or player connected to
a character.

### `loot_pickup_distance` — `double` (read-only)

The loot pickup distance of this character or max double when not a character or player connected to
a character.

### `resource_reach_distance` — `double` (read-only)

The resource reach distance of this character or max double when not a character or player connected
to a character.

### `in_combat` — `boolean` (read-only)

Whether this character entity is in combat.

### `character_running_speed` — `double` (read-only)

The current movement speed of this character, including effects from exoskeletons, tiles, stickers
and shooting.

### `character_mining_progress` — `double` (read-only)

The current mining progress between 0 and 1 of this character, or 0 if they aren't mining.

## Methods

### `get_inventory(inventory: defines.inventory) -> LuaInventory`

Get an inventory belonging to this entity. This can be either the "main" inventory or some auxiliary
one, like the module slots or logistic trash slots.  A given
[defines.inventory](runtime:defines.inventory) is only meaningful for the corresponding LuaObject
type. EG: get_inventory(defines.inventory.character_main) is only meaningful if 'this' is a player
character. You may get a value back but if the type of 'this' isn't the type referred to by the
[defines.inventory](runtime:defines.inventory) it's almost guaranteed to not be the inventory asked
for.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory` | `defines.inventory` | no |  |

**Returns:**

- `LuaInventory` — The inventory or `nil` if none with the given index was found.

### `get_inventory_name(inventory: defines.inventory) -> string`

Get name of inventory. Names match keys of [defines.inventory](runtime:defines.inventory).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory` | `defines.inventory` | no |  |

**Returns:**

- `string` — 

### `get_max_inventory_index() -> defines.inventory`

The highest index of all inventories this entity can use. Allows iteration over all of them if
desired.

**Returns:**

- `defines.inventory` — 

### `get_main_inventory() -> LuaInventory`

Gets the main inventory for this character or player if this is a character or player.

**Returns:**

- `LuaInventory` — The inventory or `nil` if this entity is not a character or player.

### `can_insert(items: ItemStackIdentification) -> boolean`

Can at least some items be inserted?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `items` | `ItemStackIdentification` | no | Items that would be inserted. |

**Returns:**

- `boolean` — `true` if at least a part of the given items could be inserted into this inventory.

### `insert(items: ItemStackIdentification) -> uint32`

Insert items into this entity. This works the same way as inserters or shift-clicking: the "best"
inventory is chosen automatically.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `items` | `ItemStackIdentification` | no | The items to insert. |

**Returns:**

- `uint32` — The number of items that were actually inserted.

### `set_gui_arrow(margin: uint32, type: GuiArrowType)`

Create an arrow which points at this entity. This is used in the tutorial. For examples, see
`control.lua` in the campaign missions.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `margin` | `uint32` | no |  |
| `type` | `GuiArrowType` | no | Where to point to. This field determines what other fields are mandatory. |

### `clear_gui_arrow()`

Removes the arrow created by `set_gui_arrow`.

### `get_item_count(?item: ItemFilter) -> uint32`

Get the number of all or some items in this entity.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemFilter` | yes | The item to count. If not specified, count all items. |

**Returns:**

- `uint32` — 

### `has_items_inside() -> boolean`

Does this entity have any item inside it?

**Returns:**

- `boolean` — 

### `can_reach_entity(entity: LuaEntity) -> boolean`

Can a given entity be opened or accessed?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no |  |

**Returns:**

- `boolean` — 

### `clear_items_inside()`

Remove all items from this entity.

### `remove_item(items: ItemStackIdentification) -> uint32`

Remove items from this entity.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `items` | `ItemStackIdentification` | no | The items to remove. |

**Returns:**

- `uint32` — The number of items that were actually removed.

### `teleport(position: MapPosition, ?surface: SurfaceIdentification, ?raise_teleported: boolean, ?snap_to_grid: boolean, ?build_check_type: defines.build_check_type) -> boolean`

Teleport the entity to a given position, possibly on another surface.  Some entities may not be
teleported. For instance, transport belts won't allow teleportation and this method will always
return `false` when used on any such entity.  You can also pass 1 or 2 numbers as the parameters and
they will be used as relative teleport coordinates `'teleport(0, 1)'` to move the entity 1 tile
positive y. `'teleport(4)'` to move the entity 4 tiles to the positive x.
`script_raised_teleported` will not be raised if teleporting a player with no character.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Where to teleport to. |
| `surface` | `SurfaceIdentification` | yes | Surface to teleport to. If not given, will teleport to the entity's current surface. Only players, cars, and spidertr... |
| `raise_teleported` | `boolean` | yes | If true, [defines.events.script_raised_teleported](runtime:defines.events.script_raised_teleported) will be fired on ... |
| `snap_to_grid` | `boolean` | yes | If false the exact position given is used to instead of snapping to the normal entity grid. This only applies if the ... |
| `build_check_type` | `defines.build_check_type` | yes | The build check type done when teleporting to the destination. Defaults to `script`. This is ignored when teleporting... |

**Returns:**

- `boolean` — `true` if the entity was successfully teleported.

### `update_selected_entity(position: MapPosition)`

Select an entity, as if by hovering the mouse above it.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Position of the entity to select. |

### `clear_selected_entity()`

Unselect any selected entity.

### `disable_flashlight()`

Disable the flashlight.  Applied per controller. Only supported by
[defines.controllers.character](runtime:defines.controllers.character) and
[defines.controllers.remote](runtime:defines.controllers.remote).

### `enable_flashlight()`

Enable the flashlight.  Applied per controller. Only supported by
[defines.controllers.character](runtime:defines.controllers.character) and
[defines.controllers.remote](runtime:defines.controllers.remote).

### `is_flashlight_enabled() -> boolean`

Is the flashlight enabled for the current controller. Only supported by
[defines.controllers.character](runtime:defines.controllers.character) and
[defines.controllers.remote](runtime:defines.controllers.remote).

**Returns:**

- `boolean` — 

### `get_craftable_count(recipe: RecipeID) -> uint32`

Gets the count of the given recipe that can be crafted.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `recipe` | `RecipeID` | no | The recipe. |

**Returns:**

- `uint32` — The count that can be crafted.

### `begin_crafting(count: uint32, recipe: RecipeID, ?silent: boolean) -> uint32`

Begins crafting the given count of the given recipe.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `count` | `uint32` | no | The count to craft. |
| `recipe` | `RecipeID` | no | The recipe to craft. |
| `silent` | `boolean` | yes | If false and the recipe can't be crafted the requested number of times printing the failure is skipped. |

**Returns:**

- `uint32` — The count that was actually started crafting.

### `cancel_crafting(index: uint32, count: uint32)`

Cancels the given amount of crafts at the given crafting queue position. If this causes any later
crafts that depend on the cancelled one to have insufficient ingredients, those crafts will also be
cancelled.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The crafting queue index. |
| `count` | `uint32` | no | The count to cancel crafting. |

### `mine_entity(entity: LuaEntity, ?force: boolean) -> boolean`

Mines the given entity as if this player (or character) mined it.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity to mine |
| `force` | `boolean` | yes | Forces mining the entity even if the items can't fit in the player. |

**Returns:**

- `boolean` — Whether the mining succeeded.

### `mine_tile(tile: LuaTile) -> boolean`

Mines the given tile as if this player (or character) mined it.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tile` | `LuaTile` | no | The tile to mine. |

**Returns:**

- `boolean` — Whether the mining succeeded.

### `is_player() -> boolean`

When `true` control adapter is a LuaPlayer object, `false` for entities including characters with
players.

**Returns:**

- `boolean` — 

### `open_technology_gui(?technology: TechnologyID)`

Open the technology GUI and select a given technology.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `technology` | `TechnologyID` | yes | The technology to select after opening the GUI. |

### `open_factoriopedia_gui(?prototype: FactoriopediaID)`

Open the Factoriopedia GUI and select a given entry, if any valid ID is given.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `prototype` | `FactoriopediaID` | yes |  |

### `close_factoriopedia_gui()`

Closes the Factoriopedia GUI if it's open.

### `is_cursor_blueprint() -> boolean`

Returns whether the player is holding a blueprint. This takes both blueprint items as well as
blueprint records from the blueprint library into account.  Note that both this method refers to the
currently selected blueprint, which means that a blueprint book with a selected blueprint will
return the information as well.

**Returns:**

- `boolean` — 

### `is_cursor_empty() -> boolean`

Returns whether the player is holding something in the cursor. Takes into account items from the
blueprint library, as well as items and ghost cursor.

**Returns:**

- `boolean` — 

### `get_requester_point() -> LuaLogisticPoint`

Gets the requester logistic point for this entity if it has one.

**Returns:**

- `LuaLogisticPoint` — 

### `set_driving(driving: boolean, ?force: boolean)`

Sets if this character or player is driving. Returns if the player or character is still driving.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `driving` | `boolean` | no | True for enter-vehicle, false for leave. |
| `force` | `boolean` | yes | If true, the player will be ejected and left at the position of the car if normal "leave" is not possible. |

### `can_place_entity(name: EntityID, position: MapPosition, ?direction: defines.direction) -> boolean`

Checks if this character or player can build the given entity at the given location on the surface
the character or player is on.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `EntityID` | no | Name of the entity that would be built. |
| `position` | `MapPosition` | no | Where the entity would be placed. |
| `direction` | `defines.direction` | yes | Direction the entity would be facing. Defaults to `north`. |

**Returns:**

- `boolean` — 
