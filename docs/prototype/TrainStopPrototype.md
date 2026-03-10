# TrainStopPrototype
*typename: `train-stop`*
*extends: `EntityWithOwnerPrototype`*

A [train stop](https://wiki.factorio.com/Train_stop).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `animation_ticks_per_frame` | `uint32` | no |  |
| `rail_overlay_animations` | `Animation4Way` | yes |  |
| `animations` | `Animation4Way` | yes |  |
| `top_animations` | `Animation4Way` | yes |  |
| `default_train_stopped_signal` | `SignalIDConnector` | yes |  |
| `default_trains_count_signal` | `SignalIDConnector` | yes |  |
| `default_trains_limit_signal` | `SignalIDConnector` | yes |  |
| `default_priority_signal` | `SignalIDConnector` | yes |  |
| `circuit_wire_max_distance` | `double` | yes |  |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `color` | `Color` | yes |  |
| `chart_name` | `boolean` | yes |  |
| `light1` | `TrainStopLight` | yes |  |
| `light2` | `TrainStopLight` | yes |  |
| `drawing_boxes` | `TrainStopDrawingBoxes` | yes |  |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
| `build_grid_size` | `2` | yes | Has to be 2 for 2x2 grid. |
