# Concept: ScheduleInterrupt

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | yes | Defaults to an empty string. |
| `conditions` | `array[WaitCondition]` | yes |  |
| `targets` | `array[ScheduleRecord]` | yes |  |
| `inside_interrupt` | `boolean` | yes | Defaults to `false`. |
