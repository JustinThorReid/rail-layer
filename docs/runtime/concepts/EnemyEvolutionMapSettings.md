# Concept: EnemyEvolutionMapSettings

These values represent a percentual increase in evolution. This means a value of `0.1` would
increase evolution by 10%.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `enabled` | `boolean` | no | Whether enemy evolution is enabled at all. |
| `time_factor` | `double` | no | The amount evolution naturally progresses by every second. Defaults to `0.000004`. |
| `destroy_factor` | `double` | no | The amount evolution progresses for every destroyed spawner. Defaults to `0.002`. |
| `pollution_factor` | `double` | no | The amount evolution progresses for every unit of pollution. Defaults to `0.0000009`. |
