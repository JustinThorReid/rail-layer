# Concept: ItemPrototypeFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `'tool' | 'mergeable' | 'hidden' | 'hidden-in-factoriopedia' | 'is-parameter' | 'item-with-inventory' | 'selection-tool' | 'item-with-label' | 'has-rocket-launch-products' | 'fuel' | 'place-result' | 'burnt-result' | 'place-as-tile' | 'placed-as-equipment-result' | 'plant-result' | 'spoil-result' | 'name' | 'type' | 'flag' | 'subgroup' | 'fuel-category' | 'stack-size' | 'fuel-value' | 'fuel-acceleration-multiplier' | 'fuel-top-speed-multiplier' | 'fuel-emissions-multiplier'` | no | The condition to filter on. |
| `mode` | `'or' | 'and'` | yes | How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher pre... |
| `invert` | `boolean` | yes | Inverts the condition. Default is `false`. |
