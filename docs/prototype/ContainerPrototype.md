# ContainerPrototype
*typename: `container`*
*extends: `EntityWithOwnerPrototype`*

A generic container, such as a chest. Cannot be rotated.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_size` | `ItemStackIndex` | no | The number of slots in this container. |
| `quality_affects_inventory_size` | `boolean` | yes |  |
| `picture` | `Sprite` | yes | The picture displayed for this entity. |
| `inventory_type` | `'normal' | 'with_bar' | 'with_filters_and_bar' | 'with_custom_stack_size' | 'with_weight_limit'` | yes | Determines the type of inventory that this container has. Whether the inventory has a limiter bar, can be filtered (l... |
| `inventory_properties` | `InventoryWithCustomStackSizeSpecification` | yes | Only used when `inventory_type` is `"with_custom_stack_size"`. |
| `inventory_weight_limit` | `Weight` | yes | Only used when `inventory_type` is `"with_weight_limit"`. |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this container. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `default_status` | `EntityStatus` | yes |  |
