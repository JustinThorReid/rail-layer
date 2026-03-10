# Event: on_segmented_unit_damaged

Called when a segmented unit is damaged. This is not called when a segmented unit's health is set
directly by another mod.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `segmented_unit` | `LuaSegmentedUnit` | no |  |
| `damage_type` | `LuaDamagePrototype` | no |  |
| `original_damage_amount` | `float` | no | The damage amount before resistances. |
| `final_damage_amount` | `float` | no | The damage amount after resistances. |
| `final_health` | `float` | no | The health of the unit after the damage was applied. |
| `cause` | `LuaEntity` | yes | The entity that originally triggered the events that led to this damage, if available (e.g. the character, turret, et... |
| `source` | `LuaEntity` | yes | The entity that is directly dealing the damage, if available (e.g. the projectile, flame, sticker, grenade, laser bea... |
| `force` | `LuaForce` | yes | The force that did the attacking. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
