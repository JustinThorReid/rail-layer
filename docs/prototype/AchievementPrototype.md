# AchievementPrototype
*typename: `achievement`*
*extends: `Prototype`*

This prototype definition is used for the in-game achievements.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `icons` | `array[IconData]` | yes | Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon file. Only loaded, and mandatory if `icons` is not defined. |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. The base game use... |
| `steam_stats_name` | `string` | yes | Unusable by mods, as this refers to unlocking the achievement through Steam. |
| `allowed_without_fight` | `boolean` | yes | If this is set to `false`, it is not possible to complete the achievement on the peaceful difficulty setting or when ... |
