# BuildEntityAchievementPrototype
*typename: `build-entity-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player builds an entity.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `to_build` | `EntityID` | no | This will trigger the achievement, if this entity is placed. |
| `amount` | `uint32` | yes | How many entities need to be built. |
| `limited_to_one_game` | `boolean` | yes | If this is false, the player carries over their statistics from this achievement through all their saves. |
| `within` | `MapTick` | yes | The achievement must be completed within this time limit. |
