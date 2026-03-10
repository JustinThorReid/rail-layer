# Concept: ItemProduct

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'item'` | no |  |
| `name` | `string` | no | Prototype name of the result. |
| `amount` | `uint16` | yes | Amount of the item to give. If not returned, `amount_min` and `amount_max` will be present instead. |
| `amount_min` | `uint16` | yes | Minimal amount of the item to give. Not returned if `amount` is returned. |
| `amount_max` | `uint16` | yes | Maximum amount of the item to give. Not returned if `amount` is returned. |
| `probability` | `double` | no | A value in range `[0, 1]`. Item is only given with this probability; otherwise no product is produced. |
| `ignored_by_stats` | `uint16` | yes | How much of this product is ignored by statistics. |
| `ignored_by_productivity` | `uint16` | yes | How much of this product is ignored by productivity. |
| `extra_count_fraction` | `float` | yes | Probability that a craft will yield one additional product. Also applies to bonus crafts caused by productivity. |
| `percent_spoiled` | `float` | yes |  |
