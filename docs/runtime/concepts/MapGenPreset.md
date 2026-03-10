# Concept: MapGenPreset

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `order` | `string` | no | The string used to alphabetically sort the presets. It is a simple string that has no additional semantic meaning. |
| `default` | `boolean` | yes | Whether this is the preset that is selected by default. |
| `basic_settings` | `MapGenSettings` | yes |  |
| `advanced_settings` | `AdvancedMapGenSettings` | yes |  |
