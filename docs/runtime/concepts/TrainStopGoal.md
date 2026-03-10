# Concept: TrainStopGoal

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `train_stop` | `LuaEntity` | no | Train stop target. Must be connected to rail ([LuaEntity::connected_rail](runtime:LuaEntity::connected_rail) returns ... |
| `priority` | `uint8` | yes | Goal priority. If not provided, defaults to [LuaEntity::train_stop_priority](runtime:LuaEntity::train_stop_priority) ... |
