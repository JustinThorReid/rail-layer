# Concept: DeciderCombinatorCondition

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `first_signal` | `SignalID` | yes | Defaults to blank |
| `first_signal_networks` | `CircuitNetworkSelection` | yes | Which circuit networks (red/green) to read `first_signal` from. Defaults to both. |
| `second_signal` | `SignalID` | yes | What to compare `first_signal` to. If not specified, `first_signal` will be compared to `constant`. |
| `second_signal_networks` | `CircuitNetworkSelection` | yes | Which circuit networks (red/green) to read `second_signal` from. Defaults to both. |
| `constant` | `int32` | yes | Constant to compare `first_signal` to. Has no effect when `second_signal` is set. When neither `second_signal` nor `c... |
| `comparator` | `ComparatorString` | yes | Specifies how the inputs should be compared. If not specified, defaults to `"<"`. |
| `compare_type` | `'and' | 'or'` | yes | Tells how this condition is compared with the preceding conditions in the corresponding `conditions` array. Defaults ... |
