# Concept: PipeConnectionDefinition

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `connection_type` | `PipeConnectionType` | no |  |
| `positions` | `array[MapPosition]` | no | The 4 cardinal direction connection points for this pipe. |
| `max_underground_distance` | `uint32` | yes | The maximum tile distance this underground connection can connect. |
| `flow_direction` | `FluidFlowDirection` | no |  |
| `direction` | `defines.direction` | no |  |
| `connection_category` | `array[string]` | no |  |
| `linked_connection_id` | `uint32` | yes | Only supplied if `connection_type` is `"linked"`. |
