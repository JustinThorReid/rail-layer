# Event: on_player_driving_changed_state

Called when the player's driving state has changed, meaning a player has either entered or left a
vehicle.  This event is not raised when the player is ejected from a vehicle due to it being
destroyed.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `entity` | `LuaEntity` | yes | The vehicle if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
