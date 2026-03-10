# Event: on_surface_imported

Called after a surface is imported via the map editor.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface_index` | `uint32` | no |  |
| `original_name` | `string` | no | The original surface name. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
