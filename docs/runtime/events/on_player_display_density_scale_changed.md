# Event: on_player_display_density_scale_changed

Called when the display density scale changes for a given player. The display density scale is the
scale value automatically applied based on the player's display DPI. This is only relevant on
platforms that support high-density displays.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player |
| `old_scale` | `double` | no | The old display scale |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
