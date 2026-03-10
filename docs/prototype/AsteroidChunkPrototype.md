# AsteroidChunkPrototype
*typename: `asteroid-chunk`*
*extends: `Prototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `minable` | `MinableProperties` | yes |  |
| `dying_trigger_effect` | `TriggerEffect` | yes |  |
| `graphics_set` | `AsteroidGraphicsSet` | yes |  |
| `icons` | `array[IconData]` | yes | Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon file. Only loaded, and mandatory if `icons` is not defined. |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
| `hide_from_signal_gui` | `boolean` | yes |  |
