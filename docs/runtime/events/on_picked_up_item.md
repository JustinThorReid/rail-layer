# Event: on_picked_up_item

Called when a player picks up an item.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_stack` | `ItemWithQualityCount` | no |  |
| `player_index` | `uint32` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
