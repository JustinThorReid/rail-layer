# Event: on_built_entity

Called when player builds something.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that was built. |
| `player_index` | `uint32` | no | The player who did the building. |
| `consumed_items` | `LuaInventory` | no | A temporary inventory containing all items that the game used to build the entity. This inventory is temporary and th... |
| `tags` | `Tags` | yes | The tags associated with this entity if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
