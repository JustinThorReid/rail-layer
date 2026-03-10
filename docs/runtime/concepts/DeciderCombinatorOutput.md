# Concept: DeciderCombinatorOutput

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `signal` | `SignalID` | no | Specifies a signal to output. |
| `copy_count_from_input` | `boolean` | yes | Defaults to `true`. When `false`, will output the value from `constant` for the given `output_signal`. |
| `constant` | `int32` | yes | The value to output when not copying input. Defaults to `1`. |
| `networks` | `CircuitNetworkSelection` | yes | Sets which input network to read the value of `signal` from if `copy_count_from_input` is `true`. Defaults to both. |
