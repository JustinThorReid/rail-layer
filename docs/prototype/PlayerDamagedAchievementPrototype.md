# PlayerDamagedAchievementPrototype
*typename: `player-damaged-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player receives damage.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `minimum_damage` | `float` | no | This will trigger the achievement, if the amount of damage taken by the dealer, is more than this. |
| `should_survive` | `boolean` | no | This sets the achievement to only trigger, if you survive the minimum amount of damage. If you don't need to survive,... |
| `type_of_dealer` | `string` | yes | This will trigger the achievement, if the player takes damage from this specific entity type. |
