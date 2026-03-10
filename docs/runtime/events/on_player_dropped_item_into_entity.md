# Event: on_player_dropped_item_into_entity

Called when a player drops a single item into an entity.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `entity` | `LuaEntity` | no | The entity the item was dropped into. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
