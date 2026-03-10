# Concept: PollutionMapSettings

These values are for the time frame of one second (60 ticks).

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `enabled` | `boolean` | no | Whether pollution is enabled at all. |
| `diffusion_ratio` | `double` | no | The amount that is diffused to a neighboring chunk (possibly repeated for other directions as well). Defaults to `0.02`. |
| `min_to_diffuse` | `double` | no | The amount of PUs that need to be in a chunk for it to start diffusing. Defaults to `15`. |
| `ageing` | `double` | no | The amount of pollution eaten by a chunk's tiles as a percentage of 1. Also known as absorption modifier. Defaults to... |
| `expected_max_per_chunk` | `double` | no | Any amount of pollution larger than this value is visualized as this value instead. Defaults to `150`. |
| `min_to_show_per_chunk` | `double` | no | Any amount of pollution smaller than this value (but bigger than zero) is visualized as this value instead. Defaults ... |
| `min_pollution_to_damage_trees` | `double` | no | Defaults to `60`. |
| `pollution_with_max_forest_damage` | `double` | no | Defaults to `150`. |
| `pollution_per_tree_damage` | `double` | no | Defaults to `50`. |
| `pollution_restored_per_tree_damage` | `double` | no | Defaults to `10`. |
| `max_pollution_to_restore_trees` | `double` | no | Defaults to `20`. |
| `enemy_attack_pollution_consumption_modifier` | `double` | no | Defaults to `1`. |
