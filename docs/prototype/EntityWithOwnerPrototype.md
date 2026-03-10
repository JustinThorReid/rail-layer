# EntityWithOwnerPrototype
*extends: `EntityWithHealthPrototype`*

Abstract base of all entities with a force in the game. These entities have a
[LuaEntity::unit_number](runtime:LuaEntity::unit_number) during runtime. Can be high priority
[military targets](https://wiki.factorio.com/Military_units_and_structures).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `is_military_target` | `boolean` | yes | Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https:/... |
| `allow_run_time_change_of_is_military_target` | `boolean` | yes | If this is true, this entity's `is_military_target` property can be changed during runtime (on the entity, not on the... |
| `quality_indicator_shift` | `Vector` | yes | The shift from the bottom left corner of the selection box. |
| `quality_indicator_scale` | `double` | yes | The default scale is based on the tile distance of the shorter dimension. Where size 3 results into scale 1. The defa... |
