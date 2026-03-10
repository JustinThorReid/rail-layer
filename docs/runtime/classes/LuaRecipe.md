# LuaRecipe

A crafting recipe. Recipes belong to forces (see [LuaForce](runtime:LuaForce)) because some recipes
are unlocked by research, and researches are per-force.

## Attributes

### `name` — `string` (read-only)

Name of the recipe. This can be different than the name of the result items as there could be more
recipes to make the same item.

### `localised_name` — `LocalisedString` (read-only)

Localised name of the recipe.

### `localised_description` — `LocalisedString` (read-only)

### `prototype` — `LuaRecipePrototype` (read-only)

The prototype for this recipe.

### `enabled` — `boolean`

Can the recipe be used?

### `category` — `string` (read-only)

Category of the recipe.

### `additional_categories` — `array[string]` (read-only)

Additional categories of this recipe.

### `ingredients` — `array[Ingredient]` (read-only)

The ingredients to this recipe.

### `products` — `array[Product]` (read-only)

The results/products of this recipe.

### `hidden` — `boolean` (read-only)

Is the recipe hidden? Hidden recipes don't show up in the crafting menu.

### `hidden_from_flow_stats` — `boolean`

Is the recipe hidden from flow statistics?

### `energy` — `double` (read-only)

Energy required to execute this recipe. This directly affects the crafting time: Recipe's energy is
exactly its crafting time in seconds, when crafted in an assembling machine with crafting speed
exactly equal to one.

### `order` — `string` (read-only)

The string used to alphabetically sort these prototypes. It is a simple string that has no
additional semantic meaning.

### `group` — `LuaGroup` (read-only)

Group of this recipe.

### `subgroup` — `LuaGroup` (read-only)

Subgroup of this recipe.

### `force` — `LuaForce` (read-only)

The force that owns this recipe.

### `productivity_bonus` — `float`

The productivity bonus for this recipe.

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

### `reload()`

Reload the recipe from the prototype.

### `has_category(category: RecipeCategoryID) -> boolean`

Checks if recipe has given category

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `category` | `RecipeCategoryID` | no |  |

**Returns:**

- `boolean` — `true` if recipe has this category.
