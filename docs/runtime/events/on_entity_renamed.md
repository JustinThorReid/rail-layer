# Event: on_entity_renamed

Called after an entity has been renamed either by the player or through script.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | If by_script is true this will not be included. |
| `by_script` | `boolean` | no |  |
| `entity` | `LuaEntity` | no |  |
| `old_name` | `string` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
