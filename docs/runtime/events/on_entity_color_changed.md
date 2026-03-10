# Event: on_entity_color_changed

Called after an entity has been recolored either by the player or through script.  Automatic
recoloring due to [LuaPlayer::color](runtime:LuaPlayer::color) will not raise events, as that is a
separate mechanism.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that was recolored. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
