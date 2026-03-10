# Event: on_pre_ghost_deconstructed

Called before a ghost entity is destroyed as a result of being marked for deconstruction.  Also
called for item request proxies before they are destroyed as a result of being marked for
deconstruction.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player that did the deconstruction if any. |
| `ghost` | `LuaEntity` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
