# BurnerUsagePrototype
*typename: `burner-usage`*
*extends: `Prototype`*

Set of data affecting tooltips, looks of gui slots etc when [burner](prototype:BurnerEnergySource)
is not supposed to be burning items but eating them.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `empty_slot_sprite` | `Sprite` | no |  |
| `empty_slot_caption` | `LocalisedString` | no |  |
| `empty_slot_description` | `LocalisedString` | yes |  |
| `icon` | `Sprite` | no |  |
| `no_fuel_status` | `LocalisedString` | yes |  |
| `accepted_fuel_key` | `string` | no |  |
| `burned_in_key` | `string` | no |  |
