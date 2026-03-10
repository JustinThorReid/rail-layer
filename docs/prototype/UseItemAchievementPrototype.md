# UseItemAchievementPrototype
*typename: `use-item-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player uses a capsule.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `to_use` | `ItemID` | no | This will trigger the achievement, if this capsule is used. |
| `limit_quality` | `QualityID` | no |  |
| `amount` | `uint32` | yes | How many capsules need to be used. |
| `limited_to_one_game` | `boolean` | yes | If this is false, the player carries over their statistics from this achievement through all their saves. |
