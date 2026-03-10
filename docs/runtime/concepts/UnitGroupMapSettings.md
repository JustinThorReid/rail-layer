# Concept: UnitGroupMapSettings

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `min_group_gathering_time` | `uint32` | no | The minimum amount of time in ticks a group will spend gathering before setting off. The actual time is a random time... |
| `max_group_gathering_time` | `uint32` | no | The maximum amount of time in ticks a group will spend gathering before setting off. The actual time is a random time... |
| `max_wait_time_for_late_members` | `uint32` | no | After gathering has finished, the group is allowed to wait this long in ticks for delayed members. New members are no... |
| `min_group_radius` | `double` | no | The minimum group radius in tiles. The actual radius is adjusted based on the number of members. Defaults to `5.0`. |
| `max_group_radius` | `double` | no | The maximum group radius in tiles. The actual radius is adjusted based on the number of members. Defaults to `30.0`. |
| `max_member_speedup_when_behind` | `double` | no | The maximum speed a percentage of its regular speed that a group member can speed up to when catching up with the gro... |
| `max_member_slowdown_when_ahead` | `double` | no | The minimum speed a percentage of its regular speed that a group member can slow down to when ahead of the group. Def... |
| `max_group_slowdown_factor` | `double` | no | The minimum speed as a percentage of its maximum speed that a group will slow down to so members that fell behind can... |
| `max_group_member_fallback_factor` | `double` | no | When a member of a group falls back more than this factor times the group radius, the group will slow down to its `ma... |
| `member_disown_distance` | `double` | no | When a member of a group falls back more than this factor times the group radius, it will be dropped from the group. ... |
| `tick_tolerance_when_member_arrives` | `uint32` | no |  |
| `max_gathering_unit_groups` | `uint32` | no | The maximum number of automatically created unit groups gathering for attack at any time. Defaults to `30`. |
| `max_unit_group_size` | `uint32` | no | The maximum number of members for an attack unit group. This only affects automatically created unit groups, manual g... |
