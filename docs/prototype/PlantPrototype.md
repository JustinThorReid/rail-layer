# PlantPrototype
*typename: `plant`*
*extends: `TreePrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `growth_ticks` | `MapTick` | no | Must be positive. |
| `harvest_emissions` | `dict[AirbornePollutantID, double]` | yes | The burst of pollution to emit when the plant is harvested. |
| `agricultural_tower_tint` | `RecipeTints` | yes |  |
