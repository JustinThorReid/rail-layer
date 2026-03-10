# Event: on_train_schedule_changed

Called when a trains schedule is changed either by the player or through script.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `train` | `LuaTrain` | no |  |
| `player_index` | `uint32` | yes | The player who made the change if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
