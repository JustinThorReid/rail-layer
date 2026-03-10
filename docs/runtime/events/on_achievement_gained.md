# Event: on_achievement_gained

Called when an achievement is gained.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player who gained the achievement. |
| `achievement` | `LuaAchievementPrototype` | no |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
