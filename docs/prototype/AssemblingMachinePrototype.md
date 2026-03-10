# AssemblingMachinePrototype
*typename: `assembling-machine`*
*extends: `CraftingMachinePrototype`*

An assembling machine - like the assembling machines 1/2/3 in the game, but you can use your own
recipe categories.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fixed_recipe` | `RecipeID` | yes | The preset recipe of this machine. This machine does not show a recipe selection if this is set. The base game uses t... |
| `fixed_quality` | `QualityID` | yes | Only loaded when fixed_recipe is provided. |
| `gui_title_key` | `string` | yes | The locale key of the title of the GUI that is shown when the player opens the assembling machine. May not be longer ... |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `default_recipe_finished_signal` | `SignalIDConnector` | yes |  |
| `default_working_signal` | `SignalIDConnector` | yes |  |
| `enable_logistic_control_behavior` | `boolean` | yes |  |
| `ingredient_count` | `uint16` | yes | Sets the maximum number of ingredients this machine can craft with. Any recipe with more ingredients than this will b... |
| `max_item_product_count` | `uint16` | yes |  |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
| `circuit_connector_flipped` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
| `fluid_boxes_off_when_no_fluid_recipe` | `boolean` | yes |  |
| `disabled_when_recipe_not_researched` | `boolean` | yes | Defaults to true if `fixed_recipe` is not given. |
