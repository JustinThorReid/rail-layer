# LinkedContainerPrototype
*typename: `linked-container`*
*extends: `EntityWithOwnerPrototype`*

A container that shares its inventory with containers with the same
[link_id](runtime:LuaEntity::link_id), which can be set via the GUI. The link IDs are per prototype
and force, so only containers with the **same ID**, **same prototype name** and **same force** will
share inventories.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_size` | `ItemStackIndex` | no | Must be > 0. |
| `picture` | `Sprite` | yes |  |
| `inventory_type` | `'normal' | 'with_bar' | 'with_filters_and_bar' | 'with_custom_stack_size' | 'with_weight_limit'` | yes | Determines the type of inventory that this linked container has. Whether the inventory has a limiter bar, can be filt... |
| `inventory_properties` | `InventoryWithCustomStackSizeSpecification` | yes | Only used when `inventory_type` is `"with_custom_stack_size"`. |
| `inventory_weight_limit` | `Weight` | yes | Only used when `inventory_type` is `"with_weight_limit"`. |
| `gui_mode` | `'all' | 'none' | 'admins'` | yes | Players that can access the GUI to change the link ID. |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this linked container. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
