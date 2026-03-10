# Concept: TrainStopBlueprintControlBehavior

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `send_to_train` | `boolean` | yes | Defaults to `true`. |
| `read_from_train` | `boolean` | yes | Defaults to `false`. |
| `read_stopped_train` | `boolean` | yes | Defaults to `false`. |
| `train_stopped_signal` | `SignalID` | no |  |
| `set_trains_limit` | `boolean` | yes | Defaults to `false`. |
| `trains_limit_signal` | `SignalID` | yes |  |
| `read_trains_count` | `boolean` | yes | Defaults to `false`. |
| `trains_count_signal` | `SignalID` | yes |  |
| `set_priority` | `boolean` | yes | Defaults to `false`. |
| `priority_signal` | `SignalID` | yes |  |
| `circuit_enabled` | `boolean` | yes | Defaults to `false`. |
| `circuit_condition` | `CircuitCondition` | yes |  |
| `connect_to_logistic_network` | `boolean` | yes | Defaults to `false`. |
| `logistic_condition` | `CircuitCondition` | yes |  |
