# EquipArmorAchievementPrototype
*typename: `equip-armor-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player equips armor.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `armor` | `ItemID` | no | The achievement will trigger if this armor or the alternative armor is equipped. |
| `alternative_armor` | `ItemID` | no | The achievement will trigger if this armor or the other armor is equipped. |
| `limit_quality` | `QualityID` | no |  |
| `amount` | `uint32` | yes | How many armors need to be equipped. |
| `limited_to_one_game` | `boolean` | yes | If this is false, the player carries over their statistics from this achievement through all their saves. |
