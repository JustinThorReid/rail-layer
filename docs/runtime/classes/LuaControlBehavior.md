# LuaControlBehavior

The control behavior for an entity. Inserters have logistic network and circuit network behavior
logic, lamps have circuit logic and so on. This is an abstract base class that concrete control
behaviors inherit.  An control reference becomes invalid once the control behavior is removed or the
entity (see [LuaEntity](runtime:LuaEntity)) it resides in is destroyed.

## Attributes

### `type` — `defines.control_behavior.type` (read-only)

The concrete type of this control behavior.

### `entity` — `LuaEntity` (read-only)

The entity this control behavior belongs to.

## Methods

### `get_circuit_network(wire_connector_id: defines.wire_connector_id) -> LuaCircuitNetwork`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `wire_connector_id` | `defines.wire_connector_id` | no | Wire connector to get circuit network for. |

**Returns:**

- `LuaCircuitNetwork` — The circuit network or nil.
