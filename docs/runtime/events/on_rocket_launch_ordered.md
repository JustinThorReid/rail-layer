# Event: on_rocket_launch_ordered

Called when a rocket silo is ordered to be launched.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `rocket` | `LuaEntity` | no |  |
| `rocket_silo` | `LuaEntity` | no |  |
| `player_index` | `uint32` | yes | The player that is riding the rocket, if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
