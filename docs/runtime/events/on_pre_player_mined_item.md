# Event: on_pre_player_mined_item

Called when the player completes a mining action, but before the entity is potentially removed from
the map. This is called even if the entity does not end up being removed.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity being mined |
| `player_index` | `uint32` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
