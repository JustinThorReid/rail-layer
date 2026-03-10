# ProxyContainerPrototype
*typename: `proxy-container`*
*extends: `EntityWithOwnerPrototype`*

A container that must be set to point at other entity and inventory index so it can forward all
inventory interactions to the other entity.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `picture` | `Sprite` | yes |  |
| `draw_inventory_content` | `boolean` | yes | If the content of the inventory should be rendered in alt mode. |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
