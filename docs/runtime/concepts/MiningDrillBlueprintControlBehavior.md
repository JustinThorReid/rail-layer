# Concept: MiningDrillBlueprintControlBehavior

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `circuit_read_resources` | `boolean` | no |  |
| `circuit_resource_read_mode` | `defines.control_behavior.mining_drill.resource_read_mode` | no |  |
| `circuit_enabled` | `boolean` | yes | Defaults to `false`. |
| `circuit_condition` | `CircuitCondition` | yes |  |
| `connect_to_logistic_network` | `boolean` | yes | Defaults to `false`. |
| `logistic_condition` | `CircuitCondition` | yes |  |
