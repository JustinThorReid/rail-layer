# Concept: MapAndDifficultySettings

A standard table containing all [MapSettings](runtime:MapSettings) attributes plus an additional
table that contains all [DifficultySettings](runtime:DifficultySettings) properties.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `pollution` | `PollutionMapSettings` | no |  |
| `enemy_evolution` | `EnemyEvolutionMapSettings` | no |  |
| `enemy_expansion` | `EnemyExpansionMapSettings` | no |  |
| `unit_group` | `UnitGroupMapSettings` | no |  |
| `steering` | `SteeringMapSettings` | no |  |
| `path_finder` | `PathFinderMapSettings` | no |  |
| `asteroids` | `AsteroidMapSettings` | no |  |
| `max_failed_behavior_count` | `uint32` | no | If a behavior fails this many times, the enemy (or enemy group) is destroyed. This solves biters getting stuck within... |
| `difficulty_settings` | `MapDifficultySettings` | no |  |
