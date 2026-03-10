# LuaAchievementPrototype

Prototype of a achievement.

## Attributes

### `allowed_without_fight` — `boolean` (read-only)

### `objective_condition` — `string` (read-only) *(optional)*

### `amount` — `uint32` (read-only) *(optional)*

### `limited_to_one_game` — `boolean` (read-only) *(optional)*

### `within` — `uint32` (read-only) *(optional)*

### `to_build` — `LuaEntityPrototype` (read-only) *(optional)*

### `surface` — `string` (read-only) *(optional)*

### `count` — `uint32` (read-only) *(optional)*

### `more_than_manually` — `boolean` (read-only) *(optional)*

### `dont_build` — `array[LuaEntityPrototype]` (read-only) *(optional)*

### `excluded` — `array[LuaEntityPrototype]` (read-only) *(optional)*

### `included` — `array[LuaEntityPrototype]` (read-only) *(optional)*

### `dont_research` — `array[LuaItemPrototype]` (read-only) *(optional)*

### `research_with` — `array[LuaItemPrototype]` (read-only) *(optional)*

### `last_hour_only` — `boolean` (read-only) *(optional)*

### `minimum_energy_produced` — `double` (read-only) *(optional)*

### `armor` — `LuaItemPrototype` (read-only) *(optional)*

### `alternative_armor` — `LuaItemPrototype` (read-only) *(optional)*

### `limit_quality` — `LuaQualityPrototype` (read-only) *(optional)*

### `damage_type` — `LuaDamagePrototype` (read-only) *(optional)*

### `damage_dealer` — `array[LuaEntityPrototype]` (read-only) *(optional)*

### `to_kill` — `array[LuaEntityPrototype]` (read-only) *(optional)*

### `personally` — `boolean` (read-only) *(optional)*

### `in_vehicle` — `boolean` (read-only) *(optional)*

### `type_to_kill` — `string` (read-only) *(optional)*

### `not_to_kill` — `LuaEntityPrototype` (read-only) *(optional)*

### `type_not_to_kill` — `string` (read-only) *(optional)*

### `module` — `array[LuaItemPrototype]` (read-only) *(optional)*

### `limit_equip_quality` — `LuaQualityPrototype` (read-only) *(optional)*

### `minimum_damage` — `float` (read-only) *(optional)*

### `should_survive` — `boolean` (read-only) *(optional)*

### `type_of_dealer` — `string` (read-only) *(optional)*

### `item_product` — `LuaItemPrototype` (read-only) *(optional)*

### `quality` — `LuaQualityPrototype` (read-only) *(optional)*

### `fluid_product` — `LuaFluidPrototype` (read-only) *(optional)*

### `technology` — `LuaTechnologyPrototype` (read-only) *(optional)*

### `research_all` — `boolean` (read-only) *(optional)*

### `science_pack` — `LuaItemPrototype` (read-only) *(optional)*

### `ammo_type` — `LuaItemPrototype` (read-only) *(optional)*

### `minimum_distance` — `double` (read-only) *(optional)*

### `to_use` — `LuaItemPrototype` (read-only) *(optional)*

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
