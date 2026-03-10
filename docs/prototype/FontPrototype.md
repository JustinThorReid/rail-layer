# FontPrototype
*typename: `font`*

Fonts are used in all GUIs in the game.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'font'` | no |  |
| `name` | `string` | no | Name of the font. |
| `size` | `int32` | no | Size of the font. |
| `from` | `string` | no | The name of the fonts .ttf descriptor. This descriptor must be defined in the locale info.json. Refer to `data/core/l... |
| `spacing` | `float` | yes |  |
| `border` | `boolean` | yes | Whether the font has a border. |
| `filtered` | `boolean` | yes |  |
| `border_color` | `Color` | yes | The color of the border, if enabled. |
