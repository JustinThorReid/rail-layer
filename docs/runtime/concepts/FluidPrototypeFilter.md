# Concept: FluidPrototypeFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `'hidden' | 'name' | 'subgroup' | 'default-temperature' | 'max-temperature' | 'heat-capacity' | 'fuel-value' | 'emissions-multiplier' | 'gas-temperature'` | no | The condition to filter on. |
| `mode` | `'or' | 'and'` | yes | How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher pre... |
| `invert` | `boolean` | yes | Inverts the condition. Default is `false`. |
