# Concept: FluidBoxFilterSpec

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | Fluid prototype name of the filtered fluid. |
| `minimum_temperature` | `float` | yes | The minimum temperature allowed into the fluidbox. |
| `maximum_temperature` | `float` | yes | The maximum temperature allowed into the fluidbox. |
| `force` | `boolean` | yes | Force the filter to be set, regardless of current fluid content. |
