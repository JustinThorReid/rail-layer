# Event: on_player_used_spidertron_remote

Called when a player uses spidertron remote to send all selected units to a given position

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player that used the remote. |
| `position` | `MapPosition` | no | Goal position to which spidertron was sent to. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
