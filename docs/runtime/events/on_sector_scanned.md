# Event: on_sector_scanned

Called when an entity of type `radar` finishes scanning a sector.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `radar` | `LuaEntity` | no | The radar that did the scanning. |
| `chunk_position` | `ChunkPosition` | no | The chunk scanned. |
| `area` | `BoundingBox` | no | Area of the scanned chunk. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
