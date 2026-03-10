# ModuleTransferAchievementPrototype
*typename: `module-transfer-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player moves a module with the cursor.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `module` | `ItemID | array[ItemID]` | no | This will trigger the achievement, if this module is transferred. |
| `amount` | `uint32` | yes | How many modules need to be transferred. |
| `limited_to_one_game` | `boolean` | yes | If this is false, the player carries over their statistics from this achievement through all their saves. |
