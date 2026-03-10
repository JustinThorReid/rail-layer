# NightVisionEquipmentPrototype
*typename: `night-vision-equipment`*
*extends: `EquipmentPrototype`*

Used by [nightvision](https://wiki.factorio.com/Nightvision).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_input` | `Energy` | no |  |
| `color_lookup` | `DaytimeColorLookupTable` | no |  |
| `darkness_to_turn_on` | `float` | yes | Must be >= 0 and <= 1. |
| `activate_sound` | `Sound` | yes |  |
| `deactivate_sound` | `Sound` | yes |  |
