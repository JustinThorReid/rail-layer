# DontResearchBeforeResearchingAchievementPrototype
*typename: `dont-research-before-researching-achievement`*
*extends: `AchievementPrototypeWithCondition`*

This prototype is used for receiving an achievement when the player researches with a specific
science pack before unlocking another.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `dont_research` | `ItemID | array[ItemID]` | no | This will disable the achievement, if technology unlocking this item is researched before meeting requirements. |
| `research_with` | `ItemID | array[ItemID]` | no | If you research technology using one of specified items, you receive the achievement. |
