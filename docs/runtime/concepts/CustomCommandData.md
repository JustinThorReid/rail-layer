# Concept: CustomCommandData

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | The name of the command. |
| `tick` | `uint32` | no | The tick the command was used in. |
| `player_index` | `uint32` | yes | The player who issued the command, or `nil` if it was issued from the server console. |
| `parameter` | `string` | yes | The parameter passed after the command, if there is one. |
