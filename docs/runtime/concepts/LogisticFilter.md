# Concept: LogisticFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `value` | `SignalFilter` | yes | The item filter to put into the slot. |
| `min` | `int32` | yes | The minimum amount to satisfy. If `min` is non-zero, and `value` is present, then the quality condition inside `value... |
| `max` | `ItemCountType` | yes | The maximum amount to keep in inventory. `nil` for infinite. |
| `minimum_delivery_count` | `ItemCountType` | yes | The minimum count that will be delivered to a space platform. `nil` if unchanged from the default. |
| `import_from` | `SpaceLocationID` | yes | The space location to import from. |
