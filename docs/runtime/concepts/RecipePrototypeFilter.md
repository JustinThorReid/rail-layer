# Concept: RecipePrototypeFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `'enabled' | 'hidden' | 'hidden-from-flow-stats' | 'hidden-from-player-crafting' | 'allow-as-intermediate' | 'allow-intermediates' | 'allow-decomposition' | 'always-show-made-in' | 'always-show-products' | 'show-amount-in-title' | 'has-ingredients' | 'has-products' | 'has-ingredient-item' | 'has-ingredient-fluid' | 'has-product-item' | 'has-product-fluid' | 'subgroup' | 'category' | 'energy' | 'emissions-multiplier' | 'request-paste-multiplier' | 'overload-multiplier'` | no | The condition to filter on. |
| `mode` | `'or' | 'and'` | yes | How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher pre... |
| `invert` | `boolean` | yes | Inverts the condition. Default is `false`. |
