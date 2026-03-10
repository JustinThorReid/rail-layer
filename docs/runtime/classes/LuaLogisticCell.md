# LuaLogisticCell

Logistic cell of a particular [LuaEntity](runtime:LuaEntity). A "Logistic Cell" is the given name
for settings and properties used by what would normally be seen as a "Roboport". A logistic cell
however doesn't have to be attached to the roboport entity (the character has one for the personal
roboport).

## Attributes

### `logistic_radius` — `float` (read-only)

Logistic radius of this cell.

### `logistics_connection_distance` — `float` (read-only)

Logistic connection distance of this cell.

### `construction_radius` — `float` (read-only)

Construction radius of this cell.

### `stationed_logistic_robot_count` — `uint32` (read-only)

Number of stationed logistic robots in this cell.

### `stationed_construction_robot_count` — `uint32` (read-only)

Number of stationed construction robots in this cell.

### `mobile` — `boolean` (read-only)

`true` if this is a mobile cell. The logistic cell created by roboport equipment considered is
mobile.

### `transmitting` — `boolean` (read-only)

`true` if this cell is active.

### `charge_approach_distance` — `float` (read-only)

Radius at which the robots hover when waiting to be charged.

### `charging_robot_count` — `uint32` (read-only)

Number of robots currently charging.

### `to_charge_robot_count` — `uint32` (read-only)

Number of robots waiting to charge.

### `owner` — `LuaEntity` (read-only)

This cell's owner.

### `logistic_network` — `LuaLogisticNetwork` (read-only) *(optional)*

The network that owns this cell, if any.

### `neighbours` — `array[LuaLogisticCell]` (read-only)

Neighbouring cells.

### `charging_robots` — `array[LuaEntity]` (read-only)

Robots currently being charged.

### `to_charge_robots` — `array[LuaEntity]` (read-only)

Robots waiting to charge.

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

### `is_in_logistic_range(position: MapPosition) -> boolean`

Is a given position within the logistic range of this cell?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no |  |

**Returns:**

- `boolean` — 

### `is_in_construction_range(position: MapPosition) -> boolean`

Is a given position within the construction range of this cell?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no |  |

**Returns:**

- `boolean` — 

### `is_neighbour_with(other: LuaLogisticCell) -> boolean`

Are two cells neighbours?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other` | `LuaLogisticCell` | no |  |

**Returns:**

- `boolean` — 
