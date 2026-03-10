# Concept: TrainFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `train_id` | `uint32` | yes | Train ID filter |
| `surface` | `SurfaceIdentification` | yes | Surface the train must be on in order to pass |
| `force` | `ForceID` | yes | Train must contain at least one rolling stock of this force to pass |
| `stock` | `EntityID | array[EntityID]` | yes | Train must contain a rolling stock of any of provided prototype to pass |
| `min_stocks` | `uint32` | yes | Train must have at least that many stocks to pass |
| `max_stocks` | `uint32` | yes | Train must have at most that many stocks to pass |
| `is_moving` | `boolean` | yes | Checks if train is moving (has speed != 0) or not moving. |
| `has_passenger` | `boolean` | yes | Checks if train has a passenger. |
| `is_manual` | `boolean` | yes | Checks if train is in manual controller. |
| `group` | `string` | yes | Train must belong to a group of a given name. |
