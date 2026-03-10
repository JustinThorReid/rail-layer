# Concept: TilePrototypeFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `'minable' | 'autoplace' | 'blueprintable' | 'item-to-place' | 'collision-mask' | 'walking-speed-modifier' | 'vehicle-friction-modifier' | 'decorative-removal-probability' | 'absorptions-per-second'` | no | The condition to filter on. |
| `mode` | `'or' | 'and'` | yes | How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher pre... |
| `invert` | `boolean` | yes | Inverts the condition. Default is `false`. |
