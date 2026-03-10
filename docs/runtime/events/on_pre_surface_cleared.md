# Event: on_pre_surface_cleared

Called just before a surface is cleared (all entities removed and all chunks deleted).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface_index` | `uint32` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
