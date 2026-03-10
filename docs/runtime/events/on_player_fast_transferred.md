# Event: on_player_fast_transferred

Called when a player fast-transfers something to or from an entity.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player transferred from or to. |
| `entity` | `LuaEntity` | no | The entity transferred from or to. |
| `from_player` | `boolean` | no | Whether the transfer was from player to entity. If `false`, the transfer was from entity to player. |
| `is_split` | `boolean` | no | Whether the transfer was a split action (half stack). |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
