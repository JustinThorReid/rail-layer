# Event: on_train_created

Called when a new train is created either through disconnecting/connecting an existing one or
building a new one.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `train` | `LuaTrain` | no |  |
| `old_train_id_1` | `uint32` | yes | The first old train id when splitting/merging trains. |
| `old_train_id_2` | `uint32` | yes | The second old train id when splitting/merging trains. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
