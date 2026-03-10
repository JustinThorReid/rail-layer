# Event: on_post_segmented_unit_died

Called after a segmented unit dies.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `LuaForce` | yes | The force that did the killing if any. |
| `segments` | `PostSegmentDiedData` | no | Information about each of the unit's individual segments when it died. |
| `prototype` | `LuaEntityPrototype` | no | The prototype of the unit that died. |
| `quality` | `LuaQualityPrototype` | no | The quality of the unit that died. |
| `damage_type` | `LuaDamagePrototype` | yes | The damage type that did the killing if any. |
| `surface_index` | `uint32` | no | The surface the entity was on. |
| `unit_number` | `uint32` | no | The unit number of the unit that died. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
