# TechnologyPrototype
*typename: `technology`*
*extends: `Prototype`*

A [technology](https://wiki.factorio.com/Technologies).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | If this name ends with `-<number>`, that number is ignored for localization purposes. E.g. if the name is `technology... |
| `icons` | `array[IconData]` | yes | Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon file. Only loaded, and mandatory if `icons` is not defined. |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. The base game use... |
| `upgrade` | `boolean` | yes | When set to true, and the technology contains several levels, only the relevant one is displayed in the technology sc... |
| `enabled` | `boolean` | yes |  |
| `essential` | `boolean` | yes | Whether the technology should be shown in the technology tree GUI when "Show only essential technologies" is enabled. |
| `visible_when_disabled` | `boolean` | yes | Controls whether the technology is shown in the tech GUI when it is not `enabled`. |
| `ignore_tech_cost_multiplier` | `boolean` | yes | Controls whether the technology cost ignores the tech cost multiplier set in the [DifficultySettings](runtime:Difficu... |
| `allows_productivity` | `boolean` | yes |  |
| `research_trigger` | `TechnologyTrigger` | yes | Mandatory if `unit` is not defined. |
| `unit` | `TechnologyUnit` | yes | Determines the cost in items and time of the technology. Mandatory if `research_trigger` is not defined. |
| `max_level` | `uint32 | 'infinite'` | yes | `"infinite"` for infinite technologies, otherwise `uint32`. Defaults to the same level as the technology, which is `0... |
| `prerequisites` | `array[TechnologyID]` | yes | List of technologies needed to be researched before this one can be researched. |
| `show_levels_info` | `boolean` | yes | Can be used to enable or disable showing levels info in technology slot. |
| `effects` | `array[Modifier]` | yes | List of effects of the technology (applied when the technology is researched). |
| `hidden` | `boolean` | yes | Hides the technology from the tech screen. |
