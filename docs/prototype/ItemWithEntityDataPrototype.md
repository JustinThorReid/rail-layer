# ItemWithEntityDataPrototype
*typename: `item-with-entity-data`*
*extends: `ItemPrototype`*

ItemWithEntityData saves data associated with the entity that it represents, for example the content
of the equipment grid of a car.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `icon_tintable_masks` | `array[IconData]` | yes | Can't be an empty array. Only loaded if `icon_tintable` is defined. |
| `icon_tintable_mask` | `FileName` | yes | Path to the icon file. Only loaded if `icon_tintable_masks` is not defined and `icon_tintable` is defined. |
| `icon_tintable_mask_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
| `icon_tintables` | `array[IconData]` | yes | Can't be an empty array. Only loaded if `icon_tintable` is defined (`icon_tintables` takes precedence over `icon_tint... |
| `icon_tintable` | `FileName` | yes | Path to the icon file. Only loaded if `icon_tintables` is not defined. |
| `icon_tintable_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
