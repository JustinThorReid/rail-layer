# Concept: CircuitCondition

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `comparator` | `ComparatorString` | yes | Specifies how the inputs should be compared. If not specified, defaults to `"<"`. |
| `first_signal` | `SignalID` | yes | Defaults to blank. |
| `second_signal` | `SignalID` | yes | What to compare `first_signal` to. If not specified, `first_signal` will be compared to `constant`. |
| `constant` | `int32` | yes | Constant to compare `first_signal` to. Has no effect when `second_signal` is set. When neither `second_signal` nor `c... |
