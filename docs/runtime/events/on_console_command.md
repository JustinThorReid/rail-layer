# Event: on_console_command

Called when someone enters a command-like message regardless of it being a valid command.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player if any. |
| `command` | `string` | no | The command as typed without the preceding forward slash ('/'). |
| `parameters` | `string` | no | The parameters provided if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
