# KillAchievementPrototype
*typename: `kill-achievement`*
*extends: `AchievementPrototype`*

This prototype is used for receiving an achievement when the player destroys a certain amount of an
entity, with a specific damage type.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `to_kill` | `EntityID | array[EntityID]` | yes | This defines which entity needs to be destroyed in order to receive the achievement. |
| `type_to_kill` | `string` | yes | This defines what entity type needs to be destroyed in order to receive the achievement. |
| `damage_type` | `DamageTypeID` | yes | This defines how the player needs to destroy the specific entity. |
| `damage_dealer` | `EntityID | array[EntityID]` | yes | The killer of the entity must be one of these entities. |
| `amount` | `uint32` | yes | This is the amount of entity of the specified type the player needs to destroy to receive the achievement. |
| `in_vehicle` | `boolean` | yes | This defines if the player needs to be in a vehicle. |
| `personally` | `boolean` | yes | This defines to make sure you are the one driving, for instance, in a tank rather than an automated train. |
