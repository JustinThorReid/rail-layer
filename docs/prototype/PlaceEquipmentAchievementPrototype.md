# PlaceEquipmentAchievementPrototype
*typename: `place-equipment-achievement`*
*extends: `AchievementPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `armor` | `ItemID` | no |  |
| `limit_quality` | `QualityID` | no |  |
| `limit_equip_quality` | `QualityID` | no |  |
| `amount` | `uint32` | yes |  |
| `limited_to_one_game` | `boolean` | yes | If this is false, the player carries over their statistics from this achievement through all their saves. |
