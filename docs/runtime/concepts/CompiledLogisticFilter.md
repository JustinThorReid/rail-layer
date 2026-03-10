# Concept: CompiledLogisticFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `LogisticFilterIndex` | no |  |
| `type` | `SignalIDType` | yes | The type of the logistic filter. |
| `name` | `string` | yes | Name of the logistic filter. |
| `quality` | `string` | yes | The prototype name of the quality. `nil` for any quality. |
| `comparator` | `ComparatorString` | yes | The comparator for quality. `nil` if any quality. |
| `count` | `int32` | no |  |
| `max_count` | `ItemCountType` | yes |  |
| `minimum_delivery_count` | `ItemCountType` | yes | Defaults to 0. |
