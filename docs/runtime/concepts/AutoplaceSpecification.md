# Concept: AutoplaceSpecification

Specifies how probability and richness are calculated when placing something on the map.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `placement_density` | `uint32` | no |  |
| `control` | `string` | yes | Control prototype name. |
| `probability_expression` | `NoiseExpressionSourceString` | no |  |
| `richness_expression` | `NoiseExpressionSourceString` | yes |  |
| `order` | `string` | no |  |
| `default_enabled` | `boolean` | no |  |
| `tile_restriction` | `array[AutoplaceSpecificationRestriction]` | yes |  |
| `force` | `string` | no |  |
