# Concept: TransportBeltBlueprintControlBehavior

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `circuit_read_hand_contents` | `boolean` | no |  |
| `circuit_contents_read_mode` | `defines.control_behavior.transport_belt.content_read_mode` | no |  |
| `circuit_enabled` | `boolean` | yes | Defaults to `false`. |
| `circuit_condition` | `CircuitCondition` | yes |  |
| `connect_to_logistic_network` | `boolean` | yes | Defaults to `false`. |
| `logistic_condition` | `CircuitCondition` | yes |  |
