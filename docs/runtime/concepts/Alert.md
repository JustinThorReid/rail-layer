# Concept: Alert

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tick` | `uint32` | no | The tick this alert was created. |
| `target` | `LuaEntity` | yes |  |
| `prototype` | `LuaEntityPrototype` | yes |  |
| `position` | `MapPosition` | yes |  |
| `icon` | `SignalID` | yes | The SignalID used for a custom alert. Only present for custom alerts. |
| `message` | `LocalisedString` | yes | The message for a custom alert. Only present for custom alerts. |
