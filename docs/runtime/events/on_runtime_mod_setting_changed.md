# Event: on_runtime_mod_setting_changed

Called when a runtime mod setting is changed by a player.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | If the `setting_type` is `"global"` and it was changed through the mod settings GUI, this is the index of the player ... |
| `setting` | `string` | no | The prototype name of the setting that was changed. |
| `setting_type` | `'runtime-global' | 'runtime-per-user'` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
