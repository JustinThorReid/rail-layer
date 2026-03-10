# DisplayPanelPrototype
*typename: `display-panel`*
*extends: `EntityWithOwnerPrototype`*

Entity that display a signal icon and some text, either configured directly in the entity or through
the circuit network.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sprites` | `Sprite4Way` | yes | The display panel's graphics. |
| `max_text_width` | `uint32` | yes | The maximum display width of the text on the display panel. If the text exceeds this width it will be wrapped so that... |
| `text_shift` | `Vector` | yes | The shift of the text on the display panel. |
| `text_color` | `Color` | yes | The color of the text on the display panel. |
| `background_color` | `Color` | yes | The background color of the display panel text. |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
