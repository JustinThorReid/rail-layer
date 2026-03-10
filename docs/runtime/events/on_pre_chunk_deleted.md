# Event: on_pre_chunk_deleted

Called before one or more chunks are deleted using
[LuaSurface::delete_chunk](runtime:LuaSurface::delete_chunk).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface_index` | `uint32` | no |  |
| `positions` | `array[ChunkPosition]` | no | The chunks to be deleted. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
