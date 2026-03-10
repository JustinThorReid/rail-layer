# DontUseEntityInEnergyProductionAchievementPrototype
*typename: `dont-use-entity-in-energy-production-achievement`*
*extends: `AchievementPrototypeWithCondition`*

This prototype is used for receiving an achievement when the player finishes the game without
receiving energy from a specific energy source.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `excluded` | `EntityID | array[EntityID]` | no | This will **not** disable the achievement, if this entity is placed, and you have received any amount of power from it. |
| `included` | `EntityID | array[EntityID]` | yes | This will disable the achievement, if this entity is placed, and you have received any amount of power from it. If yo... |
| `last_hour_only` | `boolean` | yes | If `true`, the achievements will only be checked for the last hour of the game, independently of finishing the game. |
| `minimum_energy_produced` | `Energy` | yes | The minimum amount of energy that needs to be produced by the allowed entities to trigger the achievement. |
