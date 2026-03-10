# Event: on_marked_for_upgrade

Called when an entity is marked for upgrade with the upgrade planner or via script.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes |  |
| `entity` | `LuaEntity` | no |  |
| `target` | `LuaEntityPrototype` | no |  |
| `quality` | `LuaQualityPrototype` | no | The target quality. |
| `previous_target` | `LuaEntityPrototype` | yes | Previous upgrade target of the entity, if entity was already marked for upgrade. |
| `previous_quality` | `LuaQualityPrototype` | yes | Previous upgrade target quality, if entity was already marked for upgrade. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
