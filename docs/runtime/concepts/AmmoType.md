# Concept: AmmoType

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `action` | `array[TriggerItem]` | yes |  |
| `target_type` | `TargetType` | no |  |
| `clamp_position` | `boolean` | yes | When `true`, the gun will be able to shoot even when the target is out of range. Only applies when `target_type` is `... |
| `energy_consumption` | `double` | yes | Energy consumption of a single shot, if applicable. Defaults to `0`. |
| `range_modifier` | `double` | yes |  |
| `cooldown_modifier` | `double` | yes |  |
| `consumption_modifier` | `float` | yes |  |
| `target_filter` | `array[string]` | yes | The entity prototype filter names. |
