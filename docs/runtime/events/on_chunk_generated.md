# Event: on_chunk_generated

Called when a chunk is generated.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | no | Area of the chunk. |
| `position` | `ChunkPosition` | no | Position of the chunk. |
| `surface` | `LuaSurface` | no | The surface the chunk is on. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
