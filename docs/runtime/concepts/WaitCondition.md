# Concept: WaitCondition

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `WaitConditionType` | no |  |
| `compare_type` | `'and' | 'or'` | yes | Specifies how this condition is to be compared with the preceding conditions in the corresponding `wait_conditions` a... |
| `ticks` | `uint32` | yes | Number of ticks to wait when `type` is `"time"`, or number of ticks of inactivity when `type` is `"inactivity"`. |
| `condition` | `CircuitCondition | BlueprintItemIDAndQualityIDPair` | yes | This is a CircuitCondition and only present when `type` is `"item_count"`, `"circuit"`, `"fluid_count"`, `"fuel_item_... |
| `planet` | `string` | yes | Name of the space location. Only present when `type` is "`any_planet_import_zero`" and a planet is configured. |
| `station` | `string` | yes | Name of the station. Only present when `type` is "`specific_destination_full`", "`specific_destination_not_full`", "`... |
| `damage` | `uint32` | yes | Amount of damage to take when `type` is `"damage_taken"`. |
