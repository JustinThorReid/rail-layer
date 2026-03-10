# ShootAchievementPrototype
*typename: `shoot-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player shoots certain ammo.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ammo_type` | `ItemID` | yes | This will trigger the achievement, if this ammo is shot. |
| `amount` | `uint32` | yes | How much of the ammo needs to be shot. |
