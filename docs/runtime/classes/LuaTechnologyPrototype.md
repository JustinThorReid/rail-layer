# LuaTechnologyPrototype

A Technology prototype.

## Attributes

### `enabled` — `boolean` (read-only)

If this technology prototype is enabled by default (enabled at the beginning of a game).

### `essential` — `boolean` (read-only)

If this technology prototype is essential, meaning it is shown in the condensed technology graph.

### `visible_when_disabled` — `boolean` (read-only)

If this technology will be visible in the research GUI even though it is disabled.

### `ignore_tech_cost_multiplier` — `boolean` (read-only)

If this technology ignores the technology cost multiplier setting.
[LuaTechnologyPrototype::research_unit_count](runtime:LuaTechnologyPrototype::research_unit_count)
will already take this setting into account.

### `upgrade` — `boolean` (read-only)

If the is technology prototype is an upgrade to some other technology.

### `prerequisites` — `dict[string, LuaTechnologyPrototype]` (read-only)

Prerequisites of this technology. The result maps technology name to the
[LuaTechnologyPrototype](runtime:LuaTechnologyPrototype) object.

### `successors` — `dict[string, LuaTechnologyPrototype]` (read-only)

Successors of this technology, i.e. technologies which have this technology as a prerequisite.

### `research_unit_ingredients` — `array[ResearchIngredient]` (read-only)

The types of ingredients that labs will require to research this technology.

### `effects` — `array[TechnologyModifier]` (read-only)

Effects applied when this technology is researched.

### `research_unit_count` — `uint32` (read-only)

The number of research units required for this technology.  This is multiplied by the current
research cost multiplier, unless [LuaTechnologyPrototype::ignore_tech_cost_multiplier](runtime:LuaTe
chnologyPrototype::ignore_tech_cost_multiplier) is `true`.

### `research_unit_energy` — `double` (read-only)

Amount of energy required to finish a unit of research.

### `level` — `uint32` (read-only)

The level of this research.

### `max_level` — `uint32` (read-only)

The max level of this research.

### `research_unit_count_formula` — `MathExpression` (read-only) *(optional)*

The count formula, if this research has any. See
[TechnologyUnit::count_formula](prototype:TechnologyUnit::count_formula) for details.

### `research_trigger` — `ResearchTrigger` (read-only) *(optional)*

The trigger that will research this technology if any.

### `allows_productivity` — `boolean` (read-only)

### `factoriopedia_alternative` — `LuaTechnologyPrototype` (read-only) *(optional)*

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
