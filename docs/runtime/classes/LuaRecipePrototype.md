# LuaRecipePrototype

A crafting recipe prototype.

## Attributes

### `enabled` — `boolean` (read-only)

If this recipe prototype is enabled by default (enabled at the beginning of a game).

### `category` — `string` (read-only)

Category of the recipe.

### `additional_categories` — `array[string]` (read-only)

Additional categories of the recipe.

### `ingredients` — `array[Ingredient]` (read-only)

The ingredients to this recipe.

### `products` — `array[Product]` (read-only)

The results/products of this recipe.

### `main_product` — `Product` (read-only) *(optional)*

The main product of this recipe, if any.

### `hidden_from_flow_stats` — `boolean` (read-only)

Is the recipe hidden from flow statistics (item/fluid production statistics)?

### `hidden_from_player_crafting` — `boolean` (read-only)

Is the recipe hidden from player crafting? The recipe will still show up for selection in machines.

### `always_show_made_in` — `boolean` (read-only)

Should this recipe always show "Made in" in the tooltip?

### `energy` — `double` (read-only)

Energy required to execute this recipe. This directly affects the crafting time: Recipe's energy is
exactly its crafting time in seconds, when crafted in an assembling machine with crafting speed
exactly equal to one.

### `request_paste_multiplier` — `uint32` (read-only)

The multiplier used when this recipe is copied from an assembling machine to a requester chest. For
each item in the recipe the item count * this value is set in the requester chest.

### `overload_multiplier` — `uint32` (read-only)

Used to determine how many extra items are put into an assembling machine before it's considered
"full enough".

### `maximum_productivity` — `double` (read-only)

The maximal productivity bonus that can be achieved with this recipe.

### `allow_inserter_overload` — `boolean` (read-only)

If the recipe is allowed to have the extra inserter overload bonus applied (4 * stack inserter stack
size).

### `allow_as_intermediate` — `boolean` (read-only)

If this recipe is enabled for the purpose of intermediate hand-crafting.

### `allow_intermediates` — `boolean` (read-only)

If this recipe is allowed to use intermediate recipes when hand-crafting.

### `show_amount_in_title` — `boolean` (read-only)

If the amount is shown in the recipe tooltip title when the recipe produces more than 1 product.

### `always_show_products` — `boolean` (read-only)

If the products are always shown in the recipe tooltip.

### `emissions_multiplier` — `double` (read-only)

The emissions multiplier for this recipe.

### `allow_decomposition` — `boolean` (read-only)

Is this recipe allowed to be broken down for the recipe tooltip "Total raw" calculations?

### `unlock_results` — `boolean` (read-only)

Is this recipe unlocks the result item(s) so they're shown in filter-select GUIs.

### `hide_from_signal_gui` — `boolean` (read-only)

Is this recipe is marked to be hidden from the signal GUI.

### `hide_from_flow_stats` — `boolean` (read-only)

### `hide_from_player_crafting` — `boolean` (read-only)

### `hide_from_bonus_gui` — `boolean` (read-only)

### `trash` — `array[LuaItemPrototype]` (read-only) *(optional)*

The 'trash' items that this recipe might produce as a result of spoiling.

### `preserve_products_in_machine_output` — `boolean` (read-only)

### `is_parameter` — `boolean` (read-only)

### `allowed_effects` — `dict[string, boolean]` (read-only) *(optional)*

The allowed module effects for this recipe, if any.

### `allowed_module_categories` — `dict[string, True]` (read-only) *(optional)*

The allowed module categories for this recipe, if any.

### `effect_limitation_messages` — `array[LocalisedString]` (read-only) *(optional)*

### `surface_conditions` — `array[SurfaceCondition]` (read-only) *(optional)*

The surface conditions required to craft this recipe.

### `alternative_unlock_methods` — `array[LuaTechnologyPrototype]` (read-only) *(optional)*

Additional technologies listed under "Unlocked by" on a recipe's Factoriopedia page.

### `crafting_machine_tints` — `array[Color]` (read-only)

### `factoriopedia_alternative` — `LuaRecipePrototype` (read-only) *(optional)*

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### `result_is_always_fresh` — `boolean` (read-only)

### `reset_freshness_on_craft` — `boolean` (read-only)

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

## Methods

### `has_category(category: RecipeCategoryID) -> boolean`

Checks if recipe has given category

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `category` | `RecipeCategoryID` | no |  |

**Returns:**

- `boolean` — `true` if recipe has this category.
