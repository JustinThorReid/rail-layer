# DepleteResourceAchievementPrototype
*typename: `deplete-resource-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when a resource entity is depleted.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `amount` | `uint32` | yes | How many resource entities need to be depleted. |
| `limited_to_one_game` | `boolean` | yes | If this is false, the player carries over their statistics from this achievement through all their saves. |
