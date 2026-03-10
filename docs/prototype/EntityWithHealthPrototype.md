# EntityWithHealthPrototype
*extends: `EntityPrototype`*

Abstract base of all entities with health in the game.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `max_health` | `float` | yes | The unit health can never go over the maximum. Default health of units on creation is set to max. Must be greater tha... |
| `healing_per_tick` | `float` | yes | The amount of health automatically regenerated per tick. The entity must be active for this to work. |
| `repair_speed_modifier` | `float` | yes | Multiplier of [RepairToolPrototype::speed](prototype:RepairToolPrototype::speed) for this entity prototype. |
| `dying_explosion` | `ExplosionDefinition | array[ExplosionDefinition]` | yes | The entities that are spawned in place of this one when it dies. |
| `dying_trigger_effect` | `TriggerEffect` | yes |  |
| `damaged_trigger_effect` | `TriggerEffect` | yes |  |
| `loot` | `array[LootItem]` | yes | The loot is dropped on the ground when the entity is killed. |
| `resistances` | `array[Resistance]` | yes | See [damage](https://wiki.factorio.com/Damage). |
| `attack_reaction` | `AttackReactionItem | array[AttackReactionItem]` | yes |  |
| `repair_sound` | `Sound` | yes | Played when this entity is repaired with a [RepairToolPrototype](prototype:RepairToolPrototype). |
| `alert_when_damaged` | `boolean` | yes |  |
| `hide_resistances` | `boolean` | yes | Whether the resistances of this entity should be hidden in the entity tooltip. |
| `create_ghost_on_death` | `boolean` | yes |  |
| `random_corpse_variation` | `boolean` | yes |  |
| `integration_patch_render_layer` | `RenderLayer` | yes | May also be defined inside `graphics_set` instead of directly in the entity prototype. This is useful for entities th... |
| `corpse` | `EntityID | array[EntityID]` | yes | Specifies the names of the [CorpsePrototype](prototype:CorpsePrototype) to be used when this entity dies. |
| `integration_patch` | `Sprite4Way` | yes | May also be defined inside `graphics_set` instead of directly in the entity prototype. This is useful for entities th... |
| `overkill_fraction` | `float` | yes | Fraction of health by which predicted damage must be exceeded before entity is considered as "predicted to die" causi... |
