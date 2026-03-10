# AsteroidPrototype
*typename: `asteroid`*
*extends: `EntityWithOwnerPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `mass` | `double` | yes |  |
| `graphics_set` | `AsteroidGraphicsSet` | yes |  |
| `emissions_per_second` | `dict[AirbornePollutantID, double]` | yes | Emissions cannot be larger than zero, asteroids cannot produce pollution. |
