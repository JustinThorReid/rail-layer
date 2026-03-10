# MapSettings
*typename: `map-settings`*

The default map settings.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'map-settings'` | no |  |
| `name` | `string` | no | Name of the map-settings. Base game uses "map-settings". |
| `pollution` | `PollutionSettings` | no |  |
| `steering` | `SteeringSettings` | no |  |
| `enemy_evolution` | `EnemyEvolutionSettings` | no |  |
| `enemy_expansion` | `EnemyExpansionSettings` | no |  |
| `unit_group` | `UnitGroupSettings` | no |  |
| `path_finder` | `PathFinderSettings` | no |  |
| `max_failed_behavior_count` | `uint32` | no | If a behavior fails this many times, the enemy (or enemy group) is destroyed. This solves biters stuck within their o... |
| `difficulty_settings` | `DifficultySettings` | no |  |
| `asteroids` | `AsteroidSettings` | no |  |
