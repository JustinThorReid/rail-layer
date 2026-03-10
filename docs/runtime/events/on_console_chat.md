# Event: on_console_chat

Called when a message is sent to the in-game console, either by a player or through the server
interface.  This event only fires for plain messages, not for any commands (including `/shout` or
`/whisper`).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player doing the chatting, if any. |
| `message` | `string` | no | The chat message that was sent. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
