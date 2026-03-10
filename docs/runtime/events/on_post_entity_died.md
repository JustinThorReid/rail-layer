# Event: on_post_entity_died

Called after an entity dies.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ghost` | `LuaEntity` | yes | The ghost created by the entity dying if any. |
| `force` | `LuaForce` | yes | The force that did the killing if any. |
| `position` | `MapPosition` | no | Position where the entity died. |
| `prototype` | `LuaEntityPrototype` | no | The entity prototype of the entity that died. |
| `quality` | `LuaQualityPrototype` | no | The quality of the entity that died. |
| `damage_type` | `LuaDamagePrototype` | yes | The damage type if any. |
| `corpses` | `array[LuaEntity]` | no | The corpses created by the entity dying if any. |
| `surface_index` | `uint32` | no | The surface the entity was on. |
| `unit_number` | `uint32` | yes | The unit number the entity had if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
