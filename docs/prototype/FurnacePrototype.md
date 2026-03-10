# FurnacePrototype
*typename: `furnace`*
*extends: `CraftingMachinePrototype`*

A furnace. Normal furnaces only process "smelting" category recipes, but you can make furnaces that
process other [recipe categories](prototype:RecipeCategory). The difference to assembling machines
is that furnaces automatically choose their recipe based on input.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `result_inventory_size` | `ItemStackIndex` | no | The number of output slots. |
| `source_inventory_size` | `ItemStackIndex` | no | The number of input slots, but not more than 1. |
| `cant_insert_at_source_message_key` | `string` | yes | The locale key of the message shown when the player attempts to insert an item into the furnace that cannot be proces... |
| `custom_input_slot_tooltip_key` | `string` | yes | The locale key of the tooltip to be shown in the input slot instead of the automatically generated list of items that... |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
| `circuit_connector_flipped` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `default_recipe_finished_signal` | `SignalIDConnector` | yes |  |
| `default_working_signal` | `SignalIDConnector` | yes |  |
