# Event: on_segmented_unit_died

Called when a segmented unit dies.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `segmented_unit` | `LuaSegmentedUnit` | no | The unit that died. |
| `cause` | `LuaEntity` | yes | The entity that did the killing if available. |
| `force` | `LuaForce` | yes | The force that did the killing if any. |
| `damage_type` | `LuaDamagePrototype` | yes | The damage type if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
