# Concept: ElemID

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `ElemType` | no |  |
| `name` | `string` | no | Name of a prototype as defined by `type`. |
| `quality` | `string` | yes | Name of a quality prototype if `type` uses quality. |
| `signal_type` | `SignalIDType` | yes | Only loaded, and mandatory if `type` is `"signal"`. |
