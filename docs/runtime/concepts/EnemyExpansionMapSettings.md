# Concept: EnemyExpansionMapSettings

Candidate chunks are given scores to determine which one of them should be expanded into. This score
takes into account various settings noted below. The iteration is over a square region centered
around the chunk for which the calculation is done, and includes the central chunk as well.
Distances are calculated as [Manhattan distance](https://en.wikipedia.org/wiki/Taxicab_geometry).
The pseudocode algorithm to determine a chunk's score is as follows:  ``` player = 0 for neighbour
in all chunks within enemy_building_influence_radius from chunk:   player += number of player
buildings on neighbour     * building_coefficient     *
neighbouring_chunk_coefficient^distance(chunk, neighbour) base = 0 for neighbour in all chunk within
friendly_base_influence_radius from chunk:   base += num of enemy bases on neighbour     *
other_base_coefficient     * neighbouring_base_chunk_coefficient^distance(chunk, neighbour)
score(chunk) = 1 / (1 + player + base) ```

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `enabled` | `boolean` | no | Whether enemy expansion is enabled at all. |
| `max_expansion_distance` | `uint32` | no | Distance in chunks from the furthest base around to prevent expansions from reaching too far into the player's territ... |
| `friendly_base_influence_radius` | `uint32` | no | Defaults to `2`. |
| `enemy_building_influence_radius` | `uint32` | no | Defaults to `2`. |
| `building_coefficient` | `double` | no | Defaults to `0.1`. |
| `other_base_coefficient` | `double` | no | Defaults to `2.0`. |
| `neighbouring_chunk_coefficient` | `double` | no | Defaults to `0.5`. |
| `neighbouring_base_chunk_coefficient` | `double` | no | Defaults to `0.4`. |
| `max_colliding_tiles_coefficient` | `double` | no | A chunk has to have at most this high of a percentage of unbuildable tiles for it to be considered a candidate to avo... |
| `settler_group_min_size` | `uint32` | no | The minimum size of a biter group that goes to build a new base. This is multiplied by the evolution factor. Defaults... |
| `settler_group_max_size` | `uint32` | no | The maximum size of a biter group that goes to build a new base. This is multiplied by the evolution factor. Defaults... |
| `min_expansion_cooldown` | `uint32` | no | The minimum time between expansions in ticks. The actual cooldown is adjusted to the current evolution levels. Defaul... |
| `max_expansion_cooldown` | `uint32` | no | The maximum time between expansions in ticks. The actual cooldown is adjusted to the current evolution levels. Defaul... |
