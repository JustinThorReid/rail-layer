# Event: on_player_rotated_entity

Called when the player rotates an entity. This event is only fired when the entity actually changes
its orientation -- pressing the rotate key on an entity that can't be rotated won't fire this event.
Entities being flipped will not fire this event, even if the flip involves rotating. See
[on_player_flipped_entity](runtime:on_player_flipped_entity).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The rotated entity. |
| `previous_direction` | `defines.direction` | no | The previous direction |
| `player_index` | `uint32` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
