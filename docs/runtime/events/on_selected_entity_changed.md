# Event: on_selected_entity_changed

Called after the selected entity changes for a given player.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player whose selected entity changed. |
| `last_entity` | `LuaEntity` | yes | The last selected entity if it still exists and there was one. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
