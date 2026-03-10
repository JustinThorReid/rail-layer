# SegmentedUnitPrototype
*typename: `segmented-unit`*
*extends: `SegmentPrototype`*

Entity composed of multiple segment entities that trail behind the head.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `vision_distance` | `double` | no | Vision distance, affects scanning radius for enemies to attack. Must be non-negative. Max 100. |
| `attack_parameters` | `AttackParameters` | yes | Attack parameters for when a segmented unit is attacking something. |
| `revenge_attack_parameters` | `AttackParameters` | yes | Attack parameters for when a segmented unit is attacking something in retaliation because the target first attacked it. |
| `territory_radius` | `uint32` | no | The territory radius in chunks. The chunk in which the entity spawned is included. |
| `enraged_duration` | `MapTick` | no | The number of ticks to remain enraged after last taking damage. |
| `patrolling_speed` | `double` | no | The movement speed while patrolling, in tiles per tick. Cannot be negative. |
| `investigating_speed` | `double` | no | The movement speed while investigating, in tiles per tick. Cannot be negative. |
| `attacking_speed` | `double` | no | The movement speed while attacking, in tiles per tick. Cannot be negative. |
| `enraged_speed` | `double` | no | The movement speed while enraged, in tiles per tick. Cannot be negative. |
| `acceleration_rate` | `double` | no | The acceleration rate when moving from one state to another. Cannot be negative. |
| `turn_radius` | `double` | no | Turn radius, in tiles. Cannot be negative. |
| `patrolling_turn_radius` | `double` | yes | Cannot be negative. |
| `turn_smoothing` | `double` | yes | Attempts to smooth out tight turns by limiting how quickly the unit can change turning directions. 0 means no turn sm... |
| `ticks_per_scan` | `uint32` | yes | The number of ticks between territory scans. Greater values means longer time between scans, which means a slower rea... |
| `segment_engine` | `SegmentEngineSpecification` | no | Specification of the segment engine, which should contain a list of the segments that compose the entity's body. |
| `roar` | `Sound` | yes |  |
| `roar_probability` | `float` | yes | The default is 1.0f / (6.0f * 60.0f), average pause between roars is 6 seconds. |
| `hurt_roar` | `Sound` | yes | Sound which plays when health ratio drops below any of `hurt_thresholds`. |
| `hurt_thresholds` | `array[float]` | yes | Only loaded, and mandatory if `hurt_roar` is defined. |
