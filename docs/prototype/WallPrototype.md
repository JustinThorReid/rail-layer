# WallPrototype
*typename: `wall`*
*extends: `EntityWithOwnerPrototype`*

A [wall](https://wiki.factorio.com/Wall).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `pictures` | `WallPictures` | yes |  |
| `visual_merge_group` | `uint32` | yes | Different walls will visually connect to each other if their merge group is the same. |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `default_output_signal` | `SignalIDConnector` | yes |  |
| `wall_diode_green` | `Sprite4Way` | yes |  |
| `wall_diode_red` | `Sprite4Way` | yes |  |
| `wall_diode_green_light_top` | `LightDefinition` | yes |  |
| `wall_diode_green_light_right` | `LightDefinition` | yes |  |
| `wall_diode_green_light_bottom` | `LightDefinition` | yes |  |
| `wall_diode_green_light_left` | `LightDefinition` | yes |  |
| `wall_diode_red_light_top` | `LightDefinition` | yes |  |
| `wall_diode_red_light_right` | `LightDefinition` | yes |  |
| `wall_diode_red_light_bottom` | `LightDefinition` | yes |  |
| `wall_diode_red_light_left` | `LightDefinition` | yes |  |
| `connected_gate_visualization` | `Sprite` | yes |  |
