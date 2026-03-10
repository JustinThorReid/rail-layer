# TreePrototype
*typename: `tree`*
*extends: `EntityWithHealthPrototype`*

A [tree](https://wiki.factorio.com/Tree).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `variation_weights` | `array[float]` | yes |  |
| `darkness_of_burnt_tree` | `float` | yes |  |
| `pictures` | `SpriteVariations` | yes | Mandatory if `variations` is not defined. |
| `variations` | `array[TreeVariation]` | yes | If defined, it can't be empty. |
| `colors` | `array[Color]` | yes | Mandatory if `variations` is defined. |
| `stateless_visualisation_variations` | `array[StatelessVisualisation | array[StatelessVisualisation]]` | yes |  |
| `healing_per_tick` | `float` | yes | The amount of health automatically regenerated. Trees will regenerate every 60 ticks with `healing_per_tick × 60`. |
