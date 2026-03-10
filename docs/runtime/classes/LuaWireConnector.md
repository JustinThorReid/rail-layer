# LuaWireConnector

A wire connector of a given entity. Allows to find wires, add or remove wires and do some basic
operations specific to those connectors.

## Attributes

### `owner` — `LuaEntity` (read-only)

The entity this wire connector belongs to. May return entity ghost instead if this wire connector
belongs to inner entity.

### `wire_type` — `defines.wire_type` (read-only)

The type of wires that can be connected to this connector.

### `wire_connector_id` — `defines.wire_connector_id` (read-only)

Identifier of this connector in the entity this connector belongs to.

### `is_ghost` — `boolean` (read-only)

If this connector is owned by an entity inside of a ghost. If any of 2 ends of a wire attaches to a
ghost connector, then a wire is considered to be a ghost.

### `connection_count` — `uint32` (read-only)

Amount of wires going out of this connector. It includes all wires (ghost wires and real wires).

### `connections` — `array[WireConnection]` (read-only)

All wire connectors this connector is connected to. It includes all wires (ghost wires and real
wires).

### `real_connection_count` — `uint32` (read-only)

Amount of real wires going out of this connector. It only includes wires for which both wire
connectors are real (not ghosts).

### `real_connections` — `array[WireConnection]` (read-only)

All wire connectors this connector is connected to with real wires. It only includes wires that are
between two non-ghost entities.

### `network_id` — `uint32` (read-only)

Index of a CircuitNetwork or ElectricSubNetwork which is going through this wire connector. Returns
0 if there is no network associated with this wire connector right now. CircuitNetwork indexes are
independent of indexes of ElectricSubNetwork so they may collide with each other.

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

### `is_connected_to(target: LuaWireConnector, ?origin: defines.wire_origin) -> boolean`

Checks if this connector has any wire going to the other connector.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `target` | `LuaWireConnector` | no | Other connector to check for a connection to. |
| `origin` | `defines.wire_origin` | yes | Origin of the wire. Defaults to `defines.wire_origin.player`. |

**Returns:**

- `boolean` — 

### `connect_to(target: LuaWireConnector, ?reach_check: boolean, ?origin: defines.wire_origin) -> boolean`

Connects this connector to other wire connector.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `target` | `LuaWireConnector` | no | Other connector to which a wire should be added. |
| `reach_check` | `boolean` | yes | True by default. For wires out of reach or on different surfaces, `false` must be provided. |
| `origin` | `defines.wire_origin` | yes | Origin of the wire. Defaults to `defines.wire_origin.player`. |

**Returns:**

- `boolean` — Whether a connection was made.

### `disconnect_from(target: LuaWireConnector, ?origin: defines.wire_origin) -> boolean`

Disconnects this connector from other wire connector.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `target` | `LuaWireConnector` | no | Other connector to which wire to be removed should be removed. |
| `origin` | `defines.wire_origin` | yes | Origin of the wire. Defaults to `defines.wire_origin.player`. |

**Returns:**

- `boolean` — Whether a connection was removed.

### `disconnect_all(?origin: defines.wire_origin) -> boolean`

Removes all wires going out of this wire connector.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `origin` | `defines.wire_origin` | yes | Origin of the wires to remove. Defaults to `defines.wire_origin.player`. |

**Returns:**

- `boolean` — True if any wire was removed.

### `can_wire_reach(other_connector: LuaWireConnector | LuaEntity) -> boolean`

Checks if a wire can reach from this connector to the other connector.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other_connector` | `LuaWireConnector | LuaEntity` | no | Target to which a wire reach is to be checked. |

**Returns:**

- `boolean` — 

### `have_common_neighbour(other_connector: LuaWireConnector, ?ignore_ghost_neighbours: boolean) -> boolean`

Checks if this and other wire connector have a common neighbour.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other_connector` | `LuaWireConnector` | no | Other connector to check for common neighbour. |
| `ignore_ghost_neighbours` | `boolean` | yes |  |

**Returns:**

- `boolean` — 
