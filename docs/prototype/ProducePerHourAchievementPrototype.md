# ProducePerHourAchievementPrototype
*typename: `produce-per-hour-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player crafts a specified item a
certain amount, in an hour.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `amount` | `MaterialAmountType` | no | This is how much the player has to craft in an hour, to receive the achievement. |
| `item_product` | `ItemIDFilter` | yes | Mandatory if `fluid_product` is not defined. This will tell the achievement what item the player needs to craft, to g... |
| `fluid_product` | `FluidID` | yes | Mandatory if `item_product` is not defined. This will tell the achievement what fluid the player needs to craft, to g... |
