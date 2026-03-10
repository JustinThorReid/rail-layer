# LuaInventory

A storage of item stacks.

## Attributes

### `index` — `defines.inventory` (read-only) *(optional)*

The inventory index this inventory uses, if any.

### `name` — `string` (read-only) *(optional)*

Name of this inventory, if any. Names match keys of [defines.inventory](runtime:defines.inventory).

### `entity_owner` — `LuaEntity` (read-only) *(optional)*

The entity that owns this inventory, if any.

### `player_owner` — `LuaPlayer` (read-only) *(optional)*

The player that owns this inventory, if any.

### `equipment_owner` — `LuaEquipment` (read-only) *(optional)*

The equipment that owns this inventory, if any.

### `mod_owner` — `string` (read-only) *(optional)*

The mod that owns this inventory, if any.

### `weight` — `Weight` (read-only)

Gives a total weight of all items currently in this inventory.

### `max_weight` — `Weight` (read-only) *(optional)*

Gives a maximum weight of items that can be inserted into this inventory.

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

### `clear()`

Clear this inventory of all items so that it becomes empty.

### `can_insert(items: ItemStackIdentification) -> boolean`

Can at least some items be inserted?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `items` | `ItemStackIdentification` | no | Items that would be inserted. |

**Returns:**

- `boolean` — `true` if at least a part of the given items could be inserted into this inventory.

### `insert(items: ItemStackIdentification) -> uint32`

Insert items into this inventory.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `items` | `ItemStackIdentification` | no | Items to insert. |

**Returns:**

- `uint32` — Number of items actually inserted.

### `remove(items: ItemStackIdentification) -> uint32`

Remove items from this inventory.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `items` | `ItemStackIdentification` | no | Items to remove. |

**Returns:**

- `uint32` — Number of items actually removed.

### `get_item_count(?item: ItemWithQualityID) -> uint32`

Get the number of all or some items in this inventory.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemWithQualityID` | yes | The item to count. If not specified, count all items. |

**Returns:**

- `uint32` — 

### `get_item_count_filtered(filter: ItemFilter) -> uint32`

Get the number of items in this inventory that match provided filter.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `ItemFilter` | no |  |

**Returns:**

- `uint32` — 

### `get_item_quality_counts(?item: ItemID) -> dict[string, uint32]`

Get the number of all or some items in this inventory, aggregated by quality.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemID` | yes |  |

**Returns:**

- `dict[string, uint32]` — 

### `is_empty() -> boolean`

Does this inventory contain nothing?

**Returns:**

- `boolean` — 

### `is_full() -> boolean`

Is every stack in this inventory full? Ignores stacks blocked by the current bar.  For the input
slots of crafting machines that allow counts larger than the item stack size, this may return true
even when more items can still be inserted.

**Returns:**

- `boolean` — 

### `get_contents() -> ItemWithQualityCounts`

Get counts of all items in this inventory.

**Returns:**

- `ItemWithQualityCounts` — List of all items in the inventory.

### `supports_bar() -> boolean`

Does this inventory support a bar? Bar is the draggable red thing, found for example on chests, that
limits the portion of the inventory that may be manipulated by machines.  "Supporting a bar" doesn't
mean that the bar is set to some nontrivial value. Supporting a bar means the inventory supports
having this limit at all. The character's inventory is an example of an inventory without a bar; the
wooden chest's inventory is an example of one with a bar.

**Returns:**

- `boolean` — 

### `get_bar() -> uint32`

Get the current bar. This is the index at which the red area starts.  Only useable if this inventory
supports having a bar.

**Returns:**

- `uint32` — 

### `set_bar(?bar: uint32)`

Set the current bar.  Only useable if this inventory supports having a bar.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `bar` | `uint32` | yes | The new limit. Omitting this parameter or passing `nil` will clear the limit. |

### `supports_filters() -> boolean`

If this inventory supports filters.

**Returns:**

- `boolean` — 

### `is_filtered() -> boolean`

If this inventory supports filters and has at least 1 filter set.

**Returns:**

- `boolean` — 

### `can_set_filter(index: uint32, filter: ItemFilter) -> boolean`

If the given inventory slot filter can be set to the given filter.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The item stack index |
| `filter` | `ItemFilter` | no | The item filter |

**Returns:**

- `boolean` — 

### `get_filter(index: uint32) -> ItemFilter`

Gets the filter for the given item stack index.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The item stack index |

**Returns:**

- `ItemFilter` — The current filter or `nil` if none.

### `set_filter(index: uint32, filter: ItemFilter | nil) -> boolean`

Sets the filter for the given item stack index.  Some inventory slots don't allow some filters (gun
ammo can't be filtered for non-ammo).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The item stack index. |
| `filter` | `ItemFilter | nil` | no | The new filter. `nil` erases any existing filter. |

**Returns:**

- `boolean` — If the filter was allowed to be set.

### `find_item_stack(item: ItemWithQualityID) -> (LuaItemStack, uint32)`

Finds the first LuaItemStack in the inventory that matches the given item name.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemWithQualityID` | no | The item to find |

**Returns:**

- `LuaItemStack` — The first matching stack, or `nil` if none match.

- `uint32` — The stack index of the matching stack, if any is found.

### `find_empty_stack(?item: ItemWithQualityID) -> (LuaItemStack, uint32)`

Finds the first empty stack. Filtered slots are excluded unless a filter item is given.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemWithQualityID` | yes | If given, empty stacks that are filtered for this item will be included. |

**Returns:**

- `LuaItemStack` — The first empty stack, or `nil` if there aren't any empty stacks.

- `uint32` — The stack index of the matching stack, if any is found.

### `count_empty_stacks(?include_filtered: boolean, ?include_bar: boolean) -> uint32`

Counts the number of empty stacks.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `include_filtered` | `boolean` | yes | If true, filtered slots will be included. Defaults to false. |
| `include_bar` | `boolean` | yes | If true, slots blocked by the current bar will be included. Defaults to true. |

**Returns:**

- `uint32` — 

### `get_insertable_count(item: ItemWithQualityID) -> uint32`

Gets the number of the given item that can be inserted into this inventory.  This is a "best guess"
number; things like assembling machine filtered slots, module slots, items with durability, and
items with mixed health will cause the result to be inaccurate. The main use for this is in checking
how many of a basic item can fit into a basic inventory.  This accounts for the 'bar' on the
inventory.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemWithQualityID` | no | The item to check. |

**Returns:**

- `uint32` — 

### `sort_and_merge()`

Sorts and merges the items in this inventory.

### `resize(size: uint16)`

Resizes the inventory.  Items in slots beyond the new capacity are deleted.  Only inventories
created by [LuaGameScript::create_inventory](runtime:LuaGameScript::create_inventory) can be
resized.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `size` | `uint16` | no | New size of a inventory |

### `destroy()`

Destroys this inventory.  Only inventories created by
[LuaGameScript::create_inventory](runtime:LuaGameScript::create_inventory) can be destroyed this
way.

## Operators

- `index` — The indexing operator.

- `length` — Get the number of slots in this inventory.
