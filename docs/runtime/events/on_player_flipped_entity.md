# Event: on_player_flipped_entity

Called when the player flips an entity. This event is only fired when the entity actually changes
its orientation or mirroring, so it won't be triggered when pressing the flip keys on an entity that
can't be flipped.  This event reflects a change in the
[LuaEntity::mirroring](runtime:LuaEntity::mirroring) property.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The flipped entity. |
| `horizontal` | `boolean` | no | The enacted flip. `true` means a horizontal flip, `false` a vertical one. |
| `player_index` | `uint32` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
