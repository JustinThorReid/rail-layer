# SplitterPrototype
*typename: `splitter`*
*extends: `TransportBeltConnectablePrototype`*

A [splitter](https://wiki.factorio.com/Splitter).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `structure` | `Animation4Way` | yes |  |
| `structure_patch` | `Animation4Way` | yes | Drawn 1 tile north of `structure` when the splitter is facing east or west. |
| `frozen_patch` | `Sprite4Way` | yes |  |
| `structure_animation_speed_coefficient` | `double` | yes |  |
| `structure_animation_movement_cooldown` | `uint32` | yes |  |
| `related_transport_belt` | `EntityID` | yes | The name of the [TransportBeltPrototype](prototype:TransportBeltPrototype) which is used for the sound of the underly... |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
| `default_input_left_condition` | `CircuitConditionConnector` | yes |  |
| `default_input_right_condition` | `CircuitConditionConnector` | yes |  |
| `default_output_left_condition` | `CircuitConditionConnector` | yes |  |
| `default_output_right_condition` | `CircuitConditionConnector` | yes |  |
