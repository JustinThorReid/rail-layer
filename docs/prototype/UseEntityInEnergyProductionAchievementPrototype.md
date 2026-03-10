# UseEntityInEnergyProductionAchievementPrototype
*typename: `use-entity-in-energy-production-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player produces energy by entity.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `EntityID` | no | This entity is needed to produce energy, for the player to complete the achievement. |
| `consumed_condition` | `ItemIDFilter` | yes | This item need to be consumed before gaining the achievement. |
| `produced_condition` | `ItemIDFilter` | yes | This item needs to be produced before gaining the achievement. |
| `required_to_build` | `EntityID` | yes | This item need to be built before gaining the achievement. |
