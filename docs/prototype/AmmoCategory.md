# AmmoCategory
*typename: `ammo-category`*
*extends: `Prototype`*

An ammo category. Each weapon has an ammo category, and can use any ammo with the same ammo
category. Ammo categories can also be upgraded by technologies.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `bonus_gui_order` | `Order` | yes |  |
| `icons` | `array[IconData]` | yes | Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon file. Only loaded if `icons` is not defined. |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
