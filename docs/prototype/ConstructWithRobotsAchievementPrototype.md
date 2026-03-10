# ConstructWithRobotsAchievementPrototype
*typename: `construct-with-robots-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player constructs enough entities with
construction robots.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `limited_to_one_game` | `boolean` | no | If this is false, the player carries over their statistics from this achievement through all their saves. |
| `amount` | `uint32` | yes | This will trigger the achievement, if enough entities were placed using construction robots. |
| `more_than_manually` | `boolean` | yes |  |
