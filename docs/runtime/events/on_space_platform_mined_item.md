# Event: on_space_platform_mined_item

Called when a platform mines an entity.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `platform` | `LuaSpacePlatform` | no | The platform that did the mining. |
| `item_stack` | `ItemWithQualityCount` | no | The entity the platform just picked up. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
