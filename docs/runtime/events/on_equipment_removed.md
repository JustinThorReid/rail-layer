# Event: on_equipment_removed

Called after equipment is removed from an equipment grid.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `grid` | `LuaEquipmentGrid` | no | The equipment grid removed from. |
| `equipment` | `string` | no | The equipment removed. |
| `quality` | `string` | no | The equipment quality. |
| `count` | `uint32` | no | The count of equipment removed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
