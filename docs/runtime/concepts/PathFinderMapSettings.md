# Concept: PathFinderMapSettings

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fwd2bwd_ratio` | `uint32` | no | The pathfinder performs a step of the backward search every `fwd2bwd_ratio`'th step. The minimum allowed value is `2`... |
| `goal_pressure_ratio` | `double` | no | When looking at which node to check next, their heuristic value is multiplied by this ratio. The higher it is, the mo... |
| `use_path_cache` | `boolean` | no | Whether to cache paths at all. Defaults to `true`. |
| `max_steps_worked_per_tick` | `double` | no | The maximum number of nodes that are expanded per tick. Defaults to `1 000`. |
| `max_work_done_per_tick` | `uint32` | no | The maximum amount of work each pathfinding job is allowed to do per tick. Defaults to `8 000`. |
| `short_cache_size` | `uint32` | no | Number of elements in the short cache. Defaults to `5`. |
| `long_cache_size` | `uint32` | no | Number of elements in the long cache. Defaults to `25`. |
| `short_cache_min_cacheable_distance` | `double` | no | The minimal distance to the goal in tiles required to be searched in the short path cache. Defaults to `10`. |
| `short_cache_min_algo_steps_to_cache` | `uint32` | no | The minimal number of nodes required to be searched in the short path cache. Defaults to `50`. |
| `long_cache_min_cacheable_distance` | `double` | no | The minimal distance to the goal in tiles required to be searched in the long path cache. Defaults to `30`. |
| `cache_max_connect_to_cache_steps_multiplier` | `uint32` | no | When looking for a connection to a cached path, search at most for this number of steps times the original estimate. ... |
| `cache_accept_path_start_distance_ratio` | `double` | no | When looking for a path from cache, make sure it doesn't start too far from the requested start in relative terms. De... |
| `cache_accept_path_end_distance_ratio` | `double` | no | When looking for a path from cache, make sure it doesn't end too far from the requested end in relative terms. This i... |
| `negative_cache_accept_path_start_distance_ratio` | `double` | no | Same principle as `cache_accept_path_start_distance_ratio`, but used for negative cache queries. Defaults to `0.3`. |
| `negative_cache_accept_path_end_distance_ratio` | `double` | no | Same principle as `cache_accept_path_end_distance_ratio`, but used for negative cache queries. Defaults to `0.3`. |
| `cache_path_start_distance_rating_multiplier` | `double` | no | When assigning a rating to the best path, this multiplier times start distances is considered. Defaults to `10`. |
| `cache_path_end_distance_rating_multiplier` | `double` | no | When assigning a rating to the best path, this multiplier times end distances is considered. This value is typically ... |
| `stale_enemy_with_same_destination_collision_penalty` | `double` | no | A penalty that is applied for another unit that is on the way to the goal. This is mainly relevant for situations whe... |
| `ignore_moving_enemy_collision_distance` | `double` | no | The distance in tiles after which other moving units are not considered for pathfinding. Defaults to `5`. |
| `enemy_with_different_destination_collision_penalty` | `double` | no | A penalty that is applied for another unit that is too close and either not moving or has a different goal. Defaults ... |
| `general_entity_collision_penalty` | `double` | no | The general collision penalty with other units. Defaults to `10`. |
| `general_entity_subsequent_collision_penalty` | `double` | no | The collision penalty for positions that require the destruction of an entity to get to. Defaults to `3`. |
| `extended_collision_penalty` | `double` | no | The collision penalty for collisions in the extended bounding box but outside the entity's actual bounding box. Defau... |
| `max_clients_to_accept_any_new_request` | `uint32` | no | The amount of path finder requests accepted per tick regardless of the requested path's length. Defaults to `10`. |
| `max_clients_to_accept_short_new_request` | `uint32` | no | When the `max_clients_to_accept_any_new_request` amount is exhausted, only path finder requests with a short estimate... |
| `direct_distance_to_consider_short_request` | `uint32` | no | The maximum direct distance in tiles before a request is no longer considered short. Defaults to `100`. |
| `short_request_max_steps` | `uint32` | no | The maximum amount of nodes a short request will traverse before being rescheduled as a long request. Defaults to `10... |
| `short_request_ratio` | `double` | no | The amount of steps that are allocated to short requests each tick, as a percentage of all available steps. Defaults ... |
| `min_steps_to_check_path_find_termination` | `uint32` | no | The minimum amount of steps that are guaranteed to be performed for every request. Defaults to `2000`. |
| `start_to_goal_cost_multiplier_to_terminate_path_find` | `double` | no | If the actual amount of steps is higher than the initial estimate by this factor, pathfinding is terminated. Defaults... |
| `overload_levels` | `array[uint32]` | no | The thresholds of waiting clients after each of which the per-tick work limit will be increased by the corresponding ... |
| `overload_multipliers` | `array[double]` | no | The multipliers to the amount of per-tick work applied after the corresponding thresholds in `overload_levels` have b... |
| `negative_path_cache_delay_interval` | `uint32` | no | The delay in ticks between decrementing the score of all paths in the negative cache by one. Defaults to `20`. |
