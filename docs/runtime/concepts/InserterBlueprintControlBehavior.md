# Concept: InserterBlueprintControlBehavior

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `circuit_set_filters` | `boolean` | yes | Defaults to `false`. |
| `circuit_read_hand_contents` | `boolean` | yes | Defaults to `false`. |
| `circuit_hand_read_mode` | `defines.control_behavior.inserter.hand_read_mode` | yes | Defaults to `pulse`. |
| `circuit_set_stack_size` | `boolean` | yes | Defaults to `false`. |
| `stack_control_input_signal` | `SignalID` | yes |  |
| `circuit_enabled` | `boolean` | yes | Defaults to `false`. |
| `circuit_condition` | `CircuitCondition` | yes |  |
| `connect_to_logistic_network` | `boolean` | yes | Defaults to `false`. |
| `logistic_condition` | `CircuitCondition` | yes |  |
