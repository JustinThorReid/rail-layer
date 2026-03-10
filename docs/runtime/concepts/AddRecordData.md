# Concept: AddRecordData

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `station` | `string` | yes | One of station or rail must be given. |
| `rail` | `LuaEntity` | yes |  |
| `rail_direction` | `defines.rail_direction` | yes | When `rail` is given, this can be provided to further narrow down direction from which that rail should be approached. |
| `temporary` | `boolean` | yes | Defaults to `false`. |
| `created_by_interrupt` | `boolean` | yes | Defaults to `false`. |
| `allows_unloading` | `boolean` | yes | Defaults to `true`. |
| `wait_conditions` | `array[WaitCondition]` | yes |  |
| `index` | `ScheduleRecordPosition` | yes | If record position is not given, the record is appended. |
