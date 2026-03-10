# Event: on_train_changed_state

Called when a train changes state (started to stopped and vice versa)

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `train` | `LuaTrain` | no |  |
| `old_state` | `defines.train_state` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
