# DontKillManuallyAchievementPrototype
*typename: `dont-kill-manually-achievement`*
*extends: `AchievementPrototypeWithCondition`*

This prototype is used for receiving an achievement when the player kill first entity using
artillery.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `to_kill` | `EntityID` | yes | This will disable the achievement, if this entity is killed manually. If you kill this entity with artillery first, y... |
| `type_not_to_kill` | `string` | yes | This will disable the achievement, if this entity type is killed manually. If you kill this entity type with artiller... |
