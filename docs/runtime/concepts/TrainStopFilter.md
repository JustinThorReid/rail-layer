# Concept: TrainStopFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | yes | Surface the train stop must be on in order to pass |
| `force` | `ForceID` | yes | ForceID the train stop must have to pass |
| `is_full` | `boolean` | yes | Checks if train stop is full (trains count >= trains limit or disabled) or not full. |
| `is_connected_to_rail` | `boolean` | yes | Checks if train stop has a rail next to it. |
| `type` | `EntityID | array[EntityID]` | yes | If given, only train stops of this type will pass |
| `station_name` | `string | array[string]` | yes | Train stop must belong to given station name to pass |
| `limit_set_by_control_behavior` | `boolean` | yes | If train stop has limit set by control behavior |
| `is_disabled` | `boolean` | yes | If train stop is disabled by a control behavior |
