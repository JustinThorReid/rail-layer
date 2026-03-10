# EnemySpawnerPrototype
*typename: `unit-spawner`*
*extends: `EntityWithOwnerPrototype`*

Can spawn entities. Used for biter/spitter nests.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `graphics_set` | `EnemySpawnerGraphicsSet` | no |  |
| `max_count_of_owned_units` | `uint32` | no | Count of enemies this spawner can sustain. |
| `max_count_of_owned_defensive_units` | `uint32` | yes | Count of defensive enemies this spawner can sustain. Defensive units are units with [UnitAISettings::join_attacks](pr... |
| `max_friends_around_to_spawn` | `uint32` | no | How many friendly units are required within the [EnemySpawnerPrototype::spawning_radius](prototype:EnemySpawnerProtot... |
| `max_defensive_friends_around_to_spawn` | `uint32` | yes | How many friendly defensive units are required within the [EnemySpawnerPrototype::spawning_radius](prototype:EnemySpa... |
| `spawning_cooldown` | `(double, double)` | no | Ticks for cooldown after unit is spawned. The first member of the tuple is min, the second member of the tuple is max. |
| `spawning_radius` | `double` | no | How far from the spawner can the units be spawned. |
| `spawning_spacing` | `double` | no | What spaces should be between the spawned units. |
| `max_richness_for_spawn_shift` | `double` | no | Max richness to determine spawn shift. Spawn shift is linear interpolation between 0 and max_spawn_shift. |
| `max_spawn_shift` | `double` | no | Caps how much richness can be added on top of evolution when spawning units. [See also](https://www.reddit.com/r/fact... |
| `call_for_help_radius` | `double` | no |  |
| `time_to_capture` | `uint32` | yes |  |
| `result_units` | `array[UnitSpawnDefinition]` | no | Array of the [entities](prototype:EntityPrototype) that this spawner can spawn and their spawn probabilities. The sum... |
| `dying_sound` | `Sound` | yes |  |
| `absorptions_per_second` | `dict[AirbornePollutantID, EnemySpawnerAbsorption]` | yes |  |
| `min_darkness_to_spawn` | `float` | yes |  |
| `max_darkness_to_spawn` | `float` | yes |  |
| `spawn_decorations_on_expansion` | `boolean` | yes | Whether `spawn_decoration` should be spawned when enemies [expand](https://wiki.factorio.com/Enemies#Expansions). |
| `spawn_decoration` | `array[CreateDecorativesTriggerEffectItem]` | yes | Decoratives to be created when the spawner is created by the [map generator](https://wiki.factorio.com/Map_generator)... |
| `captured_spawner_entity` | `EntityID` | yes |  |
| `is_military_target` | `True` | yes | Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https:/... |
| `allow_run_time_change_of_is_military_target` | `False` | yes | If this is true, this entities `is_military_target property` can be changed runtime (on the entity, not on the protot... |
