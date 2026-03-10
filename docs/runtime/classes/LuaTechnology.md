# LuaTechnology

One research item.

## Attributes

### `force` — `LuaForce` (read-only)

The force this technology belongs to.

### `name` — `string` (read-only)

Name of this technology.

### `localised_name` — `LocalisedString` (read-only)

Localised name of this technology.

### `localised_description` — `LocalisedString` (read-only)

### `prototype` — `LuaTechnologyPrototype` (read-only)

The prototype of this technology.

### `enabled` — `boolean`

Can this technology be researched?

### `visible_when_disabled` — `boolean`

If this technology will be visible in the research GUI even though it is disabled.

### `upgrade` — `boolean` (read-only)

Is this an upgrade-type research?

### `researched` — `boolean`

Has this technology been researched? Switching from `false` to `true` will trigger the technology
advancement perks; switching from `true` to `false` will reverse them.

### `prerequisites` — `dict[string, LuaTechnology]` (read-only)

Prerequisites of this technology. The result maps technology name to the
[LuaTechnology](runtime:LuaTechnology) object.

### `successors` — `dict[string, LuaTechnology]` (read-only)

Successors of this technology, i.e. technologies which have this technology as a prerequisite.

### `research_unit_ingredients` — `array[ResearchIngredient]` (read-only)

The types of ingredients that labs will require to research this technology.

### `research_unit_count` — `uint32` (read-only)

The number of research units required for this technology.  This is multiplied by the current
research cost multiplier, unless [LuaTechnologyPrototype::ignore_tech_cost_multiplier](runtime:LuaTe
chnologyPrototype::ignore_tech_cost_multiplier) is `true`.

### `research_unit_energy` — `double` (read-only)

Amount of energy required to finish a unit of research.

### `order` — `string` (read-only)

The string used to alphabetically sort these prototypes. It is a simple string that has no
additional semantic meaning.

### `level` — `uint32`

The current level of this technology. For level-based technology writing to this is the same as
researching the technology to the previous level. Writing the level will set
[LuaTechnology::enabled](runtime:LuaTechnology::enabled) to `true`.

### `research_unit_count_formula` — `MathExpression` (read-only) *(optional)*

The count formula, if this research has any. See
[TechnologyUnit::count_formula](prototype:TechnologyUnit::count_formula) for details.

### `saved_progress` — `double`

Saved technology progress fraction as a value in range `[0, 1)`. 0 means there is no saved progress.

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

Reload this technology from its prototype.

### `research_recursive()`

Research this technology and all of its prerequisites recursively.
