# Concept: PipeConnection

A single pipe connection for a given fluidbox.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `flow_direction` | `FluidFlowDirection` | no |  |
| `connection_type` | `PipeConnectionType` | no |  |
| `position` | `MapPosition` | no | The absolute position of this connection within the entity. |
| `target_position` | `MapPosition` | no | The absolute position of the connection's intended target. |
| `target` | `LuaFluidBox` | yes | The connected fluidbox, if any. |
| `target_fluidbox_index` | `uint32` | yes | The index of the target fluidbox, if any. |
| `target_pipe_connection_index` | `uint32` | yes | The index of the target fluidbox pipe connection, if any. |
