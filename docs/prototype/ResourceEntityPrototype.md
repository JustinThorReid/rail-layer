# ResourceEntityPrototype
*typename: `resource`*
*extends: `EntityPrototype`*

A mineable/gatherable entity.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `stages` | `AnimationVariations` | yes | Entity's graphics, using a graphic sheet, with variation and depletion. At least one stage must be defined. When usin... |
| `stage_counts` | `array[uint32]` | no | Number of stages the animation has. |
| `infinite` | `boolean` | yes | If the ore is infinitely minable, or if it will eventually run out of resource. |
| `highlight` | `boolean` | yes | If the resource should be highlighted when holding a mining drill that can mine it (holding a pumpjack highlights cru... |
| `randomize_visual_position` | `boolean` | yes | Whether there should be a slight offset to graphics of the resource. Used to make patches a little less uniform in ap... |
| `map_grid` | `boolean` | yes | Whether the resource should have a grid pattern on the map instead of a solid map color. |
| `draw_stateless_visualisation_under_building` | `boolean` | yes |  |
| `minimum` | `uint32` | yes | Must be not 0 when `infinite = true`. |
| `normal` | `uint32` | yes | Must be not 0 when `infinite = true`. |
| `infinite_depletion_amount` | `uint32` | yes | Every time an infinite-type resource is decreased by mining, its current resource amount is lowered by this number. |
| `resource_patch_search_radius` | `uint32` | yes | When hovering over this resource in the map view: How far to search for other resource patches of this type to displa... |
| `category` | `ResourceCategoryID` | yes | The category for the resource. Available categories in vanilla can be found [here](https://wiki.factorio.com/Data.raw... |
| `walking_sound` | `Sound` | yes | Sound played when the player walks over this resource. |
| `driving_sound` | `InterruptibleSound` | yes | Sound played when a [CarPrototype](prototype:CarPrototype) drives over this resource. |
| `stages_effect` | `AnimationVariations` | yes | An effect that can be overlaid above the normal ore graphics. Used in the base game to make [uranium ore](https://wik... |
| `effect_animation_period` | `float` | yes | How long it takes `stages_effect` to go from `min_effect_alpha` to `max_effect_alpha`. |
| `effect_animation_period_deviation` | `float` | yes | How much `effect_animation_period` can deviate from its original value. Used to make the stages effect alpha change l... |
| `effect_darkness_multiplier` | `float` | yes | How much the surface darkness should affect the alpha of `stages_effect`. |
| `min_effect_alpha` | `float` | yes | Minimal alpha value of `stages_effect`. |
| `max_effect_alpha` | `float` | yes | Maximal alpha value of `stages_effect`. |
| `tree_removal_probability` | `double` | yes | Must be greater than or equal to `0`. |
| `cliff_removal_probability` | `double` | yes | Must be greater than or equal to `0`. |
| `tree_removal_max_distance` | `double` | yes | Must be positive when `tree_removal_probability` is set. |
| `mining_visualisation_tint` | `Color` | yes | Defaults to the resources map color if left unset and map color is set, otherwise defaults to white if left unset. |
