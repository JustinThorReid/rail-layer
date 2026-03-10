# Event: on_player_mined_item

Called when the player mines something.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_stack` | `ItemWithQualityCount` | no | The item given to the player |
| `player_index` | `uint32` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
