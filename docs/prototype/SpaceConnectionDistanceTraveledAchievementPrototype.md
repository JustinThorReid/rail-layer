# SpaceConnectionDistanceTraveledAchievementPrototype
*typename: `space-connection-distance-traveled-achievement`*
*extends: `AchievementPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tracked_connection` | `SpaceConnectionID` | no |  |
| `distance` | `uint32` | no | How far a platform must travel to gain this achievement. Repeated trips over a shorter distance do not count. |
| `reversed` | `boolean` | no | The achievement is unidirectional, this property controls the direction (using space connection definition). When fal... |
