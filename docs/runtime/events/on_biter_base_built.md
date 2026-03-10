# Event: on_biter_base_built

Called when a biter migration builds a base.  This will be called multiple times for each migration,
once for every biter that is sacrificed to build part of the new base.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that was built. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
