# Concept: FluidProduct

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'fluid'` | no |  |
| `name` | `string` | no | Prototype name of the result. |
| `amount` | `double` | yes | Amount of the fluid to give. If not returned, `amount_min` and `amount_max` will be present instead. |
| `amount_min` | `double` | yes | Minimal amount of the fluid to give. Not returned if `amount` is returned. |
| `amount_max` | `double` | yes | Maximum amount of the fluid to give. Not returned if `amount` is returned. |
| `probability` | `double` | no | A value in range `[0, 1]`. Fluid is only given with this probability; otherwise no product is produced. |
| `ignored_by_stats` | `double` | yes | How much of this product is ignored by statistics. |
| `ignored_by_productivity` | `double` | yes | How much of this product is ignored by productivity. |
| `temperature` | `float` | yes | The fluid temperature of this product. |
| `fluidbox_index` | `uint32` | yes |  |
