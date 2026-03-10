# LuaLogisticNetwork

A single logistic network of a given force on a given surface.

## Attributes

### `network_id` — `uint32` (read-only)

The unique logistic network ID.

### `custom_name` — `string` *(optional)*

The custom logistic network name set by the player or by script, if any.

### `force` — `LuaForce` (read-only)

The force this logistic network belongs to.

### `available_logistic_robots` — `uint32` (read-only)

Number of logistic robots available for a job.

### `all_logistic_robots` — `uint32` (read-only)

The total number of logistic robots in the network (idle and active + in roboports).

### `available_construction_robots` — `uint32` (read-only)

Number of construction robots available for a job.

### `all_construction_robots` — `uint32` (read-only)

The total number of construction robots in the network (idle and active + in roboports).

### `robot_limit` — `uint32` (read-only)

Maximum number of robots the network can work with. Currently only used for the personal roboport.

### `cells` — `array[LuaLogisticCell]` (read-only)

All cells in this network.

### `providers` — `array[LuaEntity]` (read-only)

All entities that have logistic provider points in this network.

### `empty_providers` — `array[LuaEntity]` (read-only)

All entities that have empty logistic provider points in this network.

### `requesters` — `array[LuaEntity]` (read-only)

All entities that have logistic requester points in this network.

### `storages` — `array[LuaEntity]` (read-only)

All entities that have logistic storage points in this network.

### `logistic_members` — `array[LuaEntity]` (read-only)

All other entities that have logistic points in this network (inserters mostly).

### `provider_points` — `array[LuaLogisticPoint]` (read-only)

All things that have provider points in this network.

### `passive_provider_points` — `array[LuaLogisticPoint]` (read-only)

All passive provider points in this network.

### `active_provider_points` — `array[LuaLogisticPoint]` (read-only)

All active provider points in this network.

### `empty_provider_points` — `array[LuaLogisticPoint]` (read-only)

All things that have empty provider points in this network.

### `requester_points` — `array[LuaLogisticPoint]` (read-only)

All things that have requester points in this network.

### `storage_points` — `array[LuaLogisticPoint]` (read-only)

All things that have storage points in this network.

### `robots` — `array[LuaEntity]` (read-only)

All robots in this logistic network.

### `construction_robots` — `array[LuaEntity]` (read-only)

All construction robots in this logistic network.

### `logistic_robots` — `array[LuaEntity]` (read-only)

All logistic robots in this logistic network.

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

### `get_item_count(?item: ItemWithQualityID, ?member: 'storage' | 'providers') -> int32`

Count given or all items in the network or given members.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemWithQualityID` | yes | Item name to count. If not given, gives counts of all items in the network. |
| `member` | `'storage' | 'providers'` | yes | Logistic members to check. If not given, gives count in the entire network. |

**Returns:**

- `int32` — 

### `get_contents(?member: 'storage' | 'providers') -> ItemWithQualityCounts`

Get item counts for the entire network, similar to how
[LuaInventory::get_contents](runtime:LuaInventory::get_contents) does.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `member` | `'storage' | 'providers'` | yes | Logistic members to check. If not given, gives item counts for the entire network. |

**Returns:**

- `ItemWithQualityCounts` — List of all items in the network.

### `remove_item(item: ItemStackIdentification, ?members: 'active-provider' | 'passive-provider' | 'buffer' | 'storage') -> uint32`

Remove items from the logistic network. This will actually remove the items from some logistic
chests.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemStackIdentification` | no | What to remove. |
| `members` | `'active-provider' | 'passive-provider' | 'buffer' | 'storage'` | yes | Which logistic members to remove from. If not specified, removes from the network in the usual order. |

**Returns:**

- `uint32` — Number of items removed.

### `insert(item: ItemStackIdentification, ?members: 'storage' | 'storage-empty' | 'storage-empty-slot' | 'requester') -> uint32`

Insert items into the logistic network. This will actually insert the items into some logistic
chests.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemStackIdentification` | no | What to insert. |
| `members` | `'storage' | 'storage-empty' | 'storage-empty-slot' | 'requester'` | yes | Which logistic members to insert the items to. `"storage-empty"` inserts into storage chests that are completely empt... |

**Returns:**

- `uint32` — Number of items actually inserted.

### `find_cell_closest_to(position: MapPosition) -> LuaLogisticCell`

Find logistic cell closest to a given position.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no |  |

**Returns:**

- `LuaLogisticCell` — `nil` if no cell was found.

### `select_pickup_point(name: ItemWithQualityID, ?position: MapPosition, ?include_buffers: boolean, ?members: 'active-provider' | 'passive-provider' | 'buffer' | 'storage') -> LuaLogisticPoint`

Find the 'best' logistic point with this item ID and from the given position or from given chest
type.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `ItemWithQualityID` | no | Name of the item to pick up. |
| `position` | `MapPosition` | yes | When given, it will find the storage 'best' storage point from this position. |
| `include_buffers` | `boolean` | yes | Whether to consider buffer chests or not. Defaults to false. Only considered if selecting with position. |
| `members` | `'active-provider' | 'passive-provider' | 'buffer' | 'storage'` | yes | When given, it will find from only the specific type of member. If not specified, selects with normal priorities. Not... |

**Returns:**

- `LuaLogisticPoint` — `nil` if no point was found.

### `select_drop_point(stack: ItemStackIdentification, ?members: 'storage' | 'storage-empty' | 'storage-empty-slot' | 'requester') -> LuaLogisticPoint`

Find a logistic point to drop the specific item stack.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `stack` | `ItemStackIdentification` | no | Name of the item to drop off. |
| `members` | `'storage' | 'storage-empty' | 'storage-empty-slot' | 'requester'` | yes | When given, it will find from only the specific type of member. If not specified, selects with normal priorities. |

**Returns:**

- `LuaLogisticPoint` — `nil` if no point was found.

### `can_satisfy_request(item: ItemWithQualityID, ?count: uint32, ?include_buffers: boolean) -> boolean`

Can the network satisfy a request for a given item and count.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemWithQualityID` | no | Item name to check. |
| `count` | `uint32` | yes | Count to check. Defaults to 1. |
| `include_buffers` | `boolean` | yes | Should buffers be considered? Defaults to false. |

**Returns:**

- `boolean` — Whether the network can satisfy the request.

### `get_supply_counts(item: ItemWithQualityID) -> LogisticsNetworkSupplyCounts`

Get the amount of items of the given type indexed by the storage member.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemWithQualityID` | no | Item name to check. |

**Returns:**

- `LogisticsNetworkSupplyCounts` — 

### `get_supply_points(item: ItemWithQualityID) -> LogisticsNetworkSupplyPoints`

Gets the logistic points with of the given type indexed by the storage member.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemWithQualityID` | no | Item name to check. |

**Returns:**

- `LogisticsNetworkSupplyPoints` — 
