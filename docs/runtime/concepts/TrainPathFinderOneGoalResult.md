# Concept: TrainPathFinderOneGoalResult

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `found_path` | `boolean` | no | True if found path. |
| `goal_index` | `uint32` | yes | If path was found, provides index of the specific goal to which the path goes to. |
| `start_index` | `uint32` | yes | If path was found, provides index of the specific start from which the path to target goes from |
| `penalty` | `double` | yes | Penalty of the path to goal if path was found. |
| `is_front` | `boolean` | yes | If path was found, tells if the path was reached from the train's front end or from [RailEndStart](runtime:RailEndSta... |
| `total_length` | `double` | yes | If path was found and search was of type `"path"`, provides total length of all rails of the path. |
| `path` | `array[LuaEntity]` | yes | Only if search was of type `"path"`, `return_path` was set to true and path was found. Contains all rails in order th... |
| `steps_count` | `uint32` | no | Amount of steps pathfinder performed. This is a measure of how expensive this search was. |
