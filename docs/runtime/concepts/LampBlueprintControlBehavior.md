# Concept: LampBlueprintControlBehavior

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `use_colors` | `boolean` | yes | Defaults to `false`. |
| `red_signal` | `SignalID` | yes |  |
| `green_signal` | `SignalID` | yes |  |
| `blue_signal` | `SignalID` | yes |  |
| `rgb_signal` | `SignalID` | yes |  |
| `color_mode` | `defines.control_behavior.lamp.color_mode` | yes | Defaults to `defines.control_behavior.lamp.color_mapping`. |
| `circuit_enabled` | `boolean` | yes | Defaults to `false`. |
| `circuit_condition` | `CircuitCondition` | yes |  |
| `connect_to_logistic_network` | `boolean` | yes | Defaults to `false`. |
| `logistic_condition` | `CircuitCondition` | yes |  |
