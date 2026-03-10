# Event: on_entity_cloned

Called when an entity is cloned. The filter applies to the source entity.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source` | `LuaEntity` | no |  |
| `destination` | `LuaEntity` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
