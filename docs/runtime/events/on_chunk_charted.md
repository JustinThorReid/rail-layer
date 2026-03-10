# Event: on_chunk_charted

Called when a chunk is charted or re-charted.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface_index` | `uint32` | no |  |
| `position` | `ChunkPosition` | no |  |
| `area` | `BoundingBox` | no | Area of the chunk. |
| `force` | `LuaForce` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
