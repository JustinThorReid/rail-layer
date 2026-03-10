# Concept: SpaceLocationPrototypeFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `'fly-condition' | 'type' | 'solar-power-in-space'` | no | The condition to filter on. |
| `mode` | `'or' | 'and'` | yes | How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher pre... |
| `invert` | `boolean` | yes | Inverts the condition. Default is `false`. |
