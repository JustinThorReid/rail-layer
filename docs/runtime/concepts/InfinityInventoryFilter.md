# Concept: InfinityInventoryFilter

A single filter used by an infinity-filters instance.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `ItemID` | no | Name of the item. When reading a filter, this is a string. |
| `quality` | `QualityID` | yes | Quality of the item. Defaults to `"normal"`. When reading a filter, this is a string. |
| `count` | `ItemCountType` | yes | The count of the filter. Defaults to 0. |
| `mode` | `'at-least' | 'at-most' | 'exactly'` | yes | Defaults to `"at-least"`. |
| `index` | `uint32` | yes | The index of this filter in the filters list. Not required when writing a filter. |
