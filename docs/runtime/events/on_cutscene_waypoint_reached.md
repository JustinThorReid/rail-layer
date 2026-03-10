# Event: on_cutscene_waypoint_reached

Called when a cutscene is playing, each time it reaches a waypoint in that cutscene.  This refers to
an index in the table previously passed to set_controller which started the cutscene.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player index of the player viewing the cutscene. |
| `waypoint_index` | `uint32` | no | The index of the waypoint we just completed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
