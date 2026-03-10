# SoundPrototype
*typename: `sound`*

Specifies a sound that can be used with [SoundPath](runtime:SoundPath) at runtime.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'sound'` | no |  |
| `name` | `string` | no | Name of the sound. Can be used as a [SoundPath](runtime:SoundPath) at runtime. |
| `category` | `SoundType` | yes |  |
| `priority` | `uint8` | yes | Sounds with higher priority will replace a sound with lower priority if the maximum sounds limit is reached. 0 is the... |
| `aggregation` | `AggregationSpecification` | yes |  |
| `allow_random_repeat` | `boolean` | yes |  |
| `audible_distance_modifier` | `double` | yes | Modifies how far a sound can be heard. Must be between `0` and `1` inclusive. |
| `game_controller_vibration_data` | `GameControllerVibrationData` | yes |  |
| `advanced_volume_control` | `AdvancedVolumeControl` | yes |  |
| `speed_smoothing_window_size` | `uint32` | yes |  |
| `variations` | `SoundDefinition | array[SoundDefinition]` | yes |  |
| `filename` | `FileName` | yes | Supported sound file formats are `.ogg` (Vorbis and Opus) and `.wav`. Only loaded, and mandatory if `variations` is n... |
| `volume` | `float` | yes | Only loaded if `variations` is not defined. This sets both min and max volumes. Must be `>= 0`. |
| `min_volume` | `float` | yes | Only loaded if `variations` and `volume` are not defined. Must be `>= 0`. |
| `max_volume` | `float` | yes | Only loaded if `variations` is not defined. Only loaded if `min_volume` is defined. Must be `>= min_volume`. |
| `preload` | `boolean` | yes | Only loaded if `variations` is not defined. |
| `speed` | `float` | yes | Speed must be `>= 1 / 64`. This sets both min and max speeds. Only loaded if `variations` is not defined. |
| `min_speed` | `float` | yes | Must be `>= 1 / 64`. Only loaded if both `variations` and `speed` are not defined. |
| `max_speed` | `float` | yes | Must be `>= min_speed`. Only loaded if `variations` is not defined. Only loaded, and mandatory if `min_speed` is defi... |
| `modifiers` | `SoundModifier | array[SoundModifier]` | yes | Only loaded if `variations` is not defined. |
