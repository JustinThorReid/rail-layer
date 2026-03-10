# LuaGenericOnOffControlBehavior

An abstract base class for behaviors that support switching the entity on or off based on some
condition.

## Attributes

### `disabled` — `boolean` (read-only)

If the entity is currently disabled because of the control behavior.

### `circuit_enable_disable` — `boolean`

`true` if this entity enable/disable state is controlled by circuit condition

### `circuit_condition` — `CircuitConditionDefinition` *(optional)*

The circuit condition. Writing `nil` clears the circuit condition.

### `connect_to_logistic_network` — `boolean`

`true` if this should connect to the logistic network.

### `logistic_condition` — `CircuitConditionDefinition` *(optional)*

The logistic condition. Writing `nil` clears the logistic condition.
