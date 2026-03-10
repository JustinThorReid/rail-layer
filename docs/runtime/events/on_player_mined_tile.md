# Event: on_player_mined_tile

Called after a player mines tiles.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `surface_index` | `uint32` | no | The surface the tile(s) were mined from. |
| `tiles` | `array[OldTileAndPosition]` | no | The position data. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
