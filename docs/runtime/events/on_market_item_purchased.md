# Event: on_market_item_purchased

Called after a player purchases some offer from a `market` entity.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player who did the purchasing. |
| `market` | `LuaEntity` | no | The market entity. |
| `offer_index` | `uint32` | no | The index of the offer purchased. |
| `count` | `uint32` | no | The amount of offers purchased. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
