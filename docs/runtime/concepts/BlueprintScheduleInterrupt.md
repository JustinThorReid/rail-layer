# Concept: BlueprintScheduleInterrupt

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | yes | Defaults to an empty string. |
| `conditions` | `array[WaitCondition]` | yes |  |
| `targets` | `array[BlueprintScheduleRecord]` | yes |  |
| `inside_interrupt` | `boolean` | yes | Defaults to `false`. |
