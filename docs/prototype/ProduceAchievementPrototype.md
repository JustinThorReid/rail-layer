# ProduceAchievementPrototype
*typename: `produce-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player produces more than the specified
amount of items.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `amount` | `MaterialAmountType` | no | This will set the amount of items or fluids needed to craft, for the player to complete the achievement. |
| `limited_to_one_game` | `boolean` | no | If this is false, the player carries over their statistics from this achievement through all their saves. |
| `item_product` | `ItemIDFilter` | yes | Mandatory if `fluid_product` is not defined. This will tell the achievement what item the player needs to craft, to g... |
| `fluid_product` | `FluidID` | yes | Mandatory if `item_product` is not defined. This will tell the achievement what fluid the player needs to craft, to g... |
