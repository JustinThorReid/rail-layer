# Concept: TechnologyPrototypeFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `'enabled' | 'hidden' | 'upgrade' | 'visible-when-disabled' | 'has-effects' | 'has-prerequisites' | 'research-unit-ingredient' | 'unlocks-recipe' | 'level' | 'max-level' | 'time'` | no | The condition to filter on. |
| `mode` | `'or' | 'and'` | yes | How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher pre... |
| `invert` | `boolean` | yes | Inverts the condition. Default is `false`. |
