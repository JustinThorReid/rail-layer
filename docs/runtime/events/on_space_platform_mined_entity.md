# Event: on_space_platform_mined_entity

Called after the results of an entity being mined are collected just before the entity is destroyed.
After this event any items in the buffer will be transferred into the platform as if they came from
mining the entity.  The buffer inventory is special in that it's only valid during this event and
has a dynamic size expanding as more items are transferred into it.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `platform` | `LuaSpacePlatform` | no | The platform doing the mining. |
| `entity` | `LuaEntity` | no | The entity that has been mined. |
| `buffer` | `LuaInventory` | no | The temporary inventory that holds the result of mining the entity. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
