# Event: on_equipment_inserted

Called after equipment is inserted into an equipment grid.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `grid` | `LuaEquipmentGrid` | no | The equipment grid inserted into. |
| `equipment` | `LuaEquipment` | no | The equipment inserted. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
