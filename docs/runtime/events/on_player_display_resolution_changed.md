# Event: on_player_display_resolution_changed

Called when the display resolution changes for a given player.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player |
| `old_resolution` | `DisplayResolution` | no | The old display resolution |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
