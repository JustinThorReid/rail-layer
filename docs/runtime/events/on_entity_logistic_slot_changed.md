# Event: on_entity_logistic_slot_changed

Called when one of an entity's logistic slots changes.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player who changed the slot, or `nil` if changed by script. |
| `entity` | `LuaEntity` | no | The entity for whom a logistic slot was changed. |
| `section` | `LuaLogisticSection` | no | The section changed. |
| `slot_index` | `uint32` | no | The slot index that was changed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
