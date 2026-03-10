# ParticleSourcePrototype
*typename: `particle-source`*
*extends: `EntityPrototype`*

Creates particles.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `time_to_live` | `float` | no |  |
| `time_before_start` | `float` | no |  |
| `height` | `float` | no |  |
| `vertical_speed` | `float` | no |  |
| `horizontal_speed` | `float` | no |  |
| `particle` | `ParticleID` | yes | Mandatory if `smoke` is not defined. |
| `smoke` | `array[SmokeSource]` | yes | Mandatory if `particle` is not defined. |
| `time_to_live_deviation` | `float` | yes |  |
| `time_before_start_deviation` | `float` | yes |  |
| `height_deviation` | `float` | yes |  |
| `vertical_speed_deviation` | `float` | yes |  |
| `horizontal_speed_deviation` | `float` | yes |  |
