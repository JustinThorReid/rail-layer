# Concept: ArithmeticCombinatorParameters

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `first_signal` | `SignalID` | yes | First signal to use in an operation. If not specified, the second argument will be the value of `first_constant`. |
| `first_signal_networks` | `CircuitNetworkSelection` | yes | Which circuit networks (red/green) to read `first_signal` from. Defaults to both. |
| `first_constant` | `int32` | yes | Constant to use as the first argument of the operation. Has no effect when `first_signal` is set. Defaults to `0`. |
| `operation` | `ArithmeticCombinatorParameterOperation` | yes | When not specified, defaults to `"*"`. |
| `second_signal` | `SignalID` | yes | Second signal to use in an operation. If not specified, the second argument will be the value of `second_constant`. |
| `second_signal_networks` | `CircuitNetworkSelection` | yes | Which circuit networks (red/green) to read `second_signal` from. Defaults to both. |
| `second_constant` | `int32` | yes | Constant to use as the second argument of the operation. Has no effect when `second_signal` is set. Defaults to `0`. |
| `output_signal` | `SignalID` | yes | Specifies the signal to output. |
