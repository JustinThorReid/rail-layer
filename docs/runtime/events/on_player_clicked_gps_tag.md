# Event: on_player_clicked_gps_tag

Called when a player clicks a gps tag

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | Index of the player |
| `position` | `MapPosition` | no | Map position contained in gps tag |
| `surface` | `string` | no | Surface name contained in gps tag, even when such surface does not exists |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
