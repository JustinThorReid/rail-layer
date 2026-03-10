# DontBuildEntityAchievementPrototype
*typename: `dont-build-entity-achievement`*
*extends: `AchievementPrototypeWithCondition`*

This prototype is used for receiving an achievement when the player finishes the game without
building a specific entity.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `dont_build` | `EntityID | array[EntityID]` | no | This will disable the achievement, if this entity is placed. If you finish the game without building this entity, you... |
| `amount` | `uint32` | yes |  |
| `research_with` | `ItemID | array[ItemID]` | yes | If you research technology using one of specified items before building entity, you receive the achievement. |
