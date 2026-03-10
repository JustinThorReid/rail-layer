# RecipePrototype
*typename: `recipe`*
*extends: `Prototype`*

A recipe. It can be a crafting recipe, a smelting recipe, or a custom type of recipe, see
[RecipeCategory](prototype:RecipeCategory).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `category` | `RecipeCategoryID` | yes | The [category](prototype:RecipeCategory) of this recipe. Controls which machines can craft this recipe. The built-in ... |
| `additional_categories` | `array[RecipeCategoryID]` | yes |  |
| `crafting_machine_tint` | `RecipeTints` | yes | Used by [WorkingVisualisations::working_visualisations](prototype:WorkingVisualisations::working_visualisations) to t... |
| `icons` | `array[IconData]` | yes | Can't be an empty array. |
| `icon` | `FileName` | yes | If given, this determines the recipe's icon. Otherwise, the icon of `main_product` or the singular product is used. O... |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
| `ingredients` | `array[IngredientPrototype]` | yes | A table containing ingredient names and amounts. Can also contain information about fluid temperature and whether som... |
| `results` | `array[ProductPrototype]` | yes | A table containing result names and amounts. Products also contain information such as fluid temperature, probability... |
| `main_product` | `string` | yes | For recipes with one or more products: Subgroup, localised_name and icon default to the values of the singular/main p... |
| `energy_required` | `double` | yes | The amount of time it takes to make this recipe. Must be `> 0.001`. Equals the number of seconds it takes to craft at... |
| `emissions_multiplier` | `double` | yes |  |
| `maximum_productivity` | `double` | yes | Must be >= 0. |
| `requester_paste_multiplier` | `uint32` | yes |  |
| `overload_multiplier` | `uint32` | yes | Used to determine how many extra items are put into an assembling machine before it's considered "full enough". See [... |
| `allow_inserter_overload` | `boolean` | yes | Whether the recipe is allowed to have the extra inserter overload bonus applied (4 * stack inserter stack size). |
| `enabled` | `boolean` | yes | This can be `false` to disable the recipe at the start of the game, or `true` to leave it enabled. If a recipe is unl... |
| `hide_from_stats` | `boolean` | yes | Hides the recipe from item/fluid production statistics. |
| `hide_from_player_crafting` | `boolean` | yes | Hides the recipe from the player's crafting screen. The recipe will still show up for selection in machines. |
| `hide_from_bonus_gui` | `boolean` | yes |  |
| `allow_decomposition` | `boolean` | yes | Whether this recipe is allowed to be broken down for the recipe tooltip "Total raw" calculations. |
| `allow_as_intermediate` | `boolean` | yes | Whether the recipe can be used as an intermediate recipe in hand-crafting. |
| `allow_intermediates` | `boolean` | yes | Whether the recipe is allowed to use intermediate recipes when hand-crafting. |
| `always_show_made_in` | `boolean` | yes | Whether the "Made in: <Machine>" part of the tool-tip should always be present, and not only when the recipe can't be... |
| `show_amount_in_title` | `boolean` | yes | Whether the recipe name should have the product amount in front of it. E.g. "2x Transport belt". |
| `always_show_products` | `boolean` | yes | Whether the products are always shown in the recipe tooltip. |
| `unlock_results` | `boolean` | yes | Whether enabling this recipe unlocks its item products to show in selection lists (item filters, logistic requests, e... |
| `preserve_products_in_machine_output` | `boolean` | yes |  |
| `result_is_always_fresh` | `boolean` | yes | When set to true, the recipe will always produce fresh (non-spoiled) item even when the ingredients are spoiled. |
| `reset_freshness_on_craft` | `boolean` | yes | When set to true, if the recipe successfully finishes crafting without spoiling, the result is produced fresh (non-sp... |
| `allow_consumption_message` | `LocalisedString` | yes |  |
| `allow_speed_message` | `LocalisedString` | yes |  |
| `allow_productivity_message` | `LocalisedString` | yes |  |
| `allow_pollution_message` | `LocalisedString` | yes |  |
| `allow_quality_message` | `LocalisedString` | yes |  |
| `surface_conditions` | `array[SurfaceCondition]` | yes |  |
| `hide_from_signal_gui` | `boolean` | yes | If left unset, this property will be determined automatically: If the recipe is not `hidden`, and no item, fluid, or ... |
| `allow_consumption` | `boolean` | yes |  |
| `allow_speed` | `boolean` | yes |  |
| `allow_productivity` | `boolean` | yes |  |
| `allow_pollution` | `boolean` | yes |  |
| `allow_quality` | `boolean` | yes |  |
| `allowed_module_categories` | `array[ModuleCategoryID]` | yes | Sets the [module categories](prototype:ModuleCategory) that are allowed to be used with this recipe. |
| `alternative_unlock_methods` | `array[TechnologyID]` | yes | Additional technologies to list under "Unlocked by" on a recipe's Factoriopedia page. |
| `auto_recycle` | `boolean` | yes | Whether the recipe should be included in the recycling recipes automatically generated by the quality mod. This prope... |
| `hidden` | `boolean` | yes | Hides the recipe from crafting menus and other recipe selection lists. |
