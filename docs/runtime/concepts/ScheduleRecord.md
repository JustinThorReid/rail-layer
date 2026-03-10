# Concept: ScheduleRecord

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `station` | `string` | yes | Name of the station. |
| `rail` | `LuaEntity` | yes |  |
| `rail_direction` | `defines.rail_direction` | yes | When a train is allowed to reach rail target from any direction it will be `nil`. If rail has to be reached from spec... |
| `wait_conditions` | `array[WaitCondition]` | yes |  |
| `temporary` | `boolean` | yes |  |
| `created_by_interrupt` | `boolean` | yes |  |
| `allows_unloading` | `boolean` | yes |  |
