# Concept: TrainPathAllGoalsResult

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `amount_accessible` | `uint32` | no | Amount of goals that are accessible. |
| `accessible` | `array[boolean]` | no | Array of the same length as requested goals: each field will tell if related goal is accessible for the train. |
| `penalties` | `array[double]` | yes | Array of the same length as requested goals. Only present if request type was `"all-goals-penalties"`. |
| `steps_count` | `uint32` | no | Amount of steps pathfinder performed. This is a measure of how expensive this search was. |
