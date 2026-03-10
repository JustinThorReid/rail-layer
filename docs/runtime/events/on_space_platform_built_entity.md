# Event: on_space_platform_built_entity

Called when a space platform builds an entity.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `platform` | `LuaSpacePlatform` | no | The platform that did the building. |
| `entity` | `LuaEntity` | no | The entity built. |
| `stack` | `LuaItemStack` | no | The item used to do the building. |
| `tags` | `Tags` | yes | The tags associated with this entity if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
