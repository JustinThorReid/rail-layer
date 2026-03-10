# GroupAttackAchievementPrototype
*typename: `group-attack-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player gets attacked due to pollution.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `amount` | `uint32` | yes | This will trigger the achievement, if the player receives this amount of attacks. **Note**: The default achievement "... |
| `entities` | `array[EntityID]` | yes | The achievement is only triggered if the attacking group of enemies contains at least one of the entities listed here. |
| `attack_type` | `'autonomous' | 'distraction' | 'scripted'` | yes | The type of attack that triggers this achievement. "autonomous" attacks are triggered in response to pollution or a t... |
