# ItemGroup
*typename: `item-group`*
*extends: `Prototype`*

An item group. Item groups are the tabs shown above the list of craftable items in the player's
inventory GUI. The built-in groups are "logistics", "production", "intermediate-products" and
"combat" but mods can define their own.  Items are sorted into item groups by sorting them into a
[subgroup](prototype:ItemPrototype::subgroup) which then belongs to an [item
group](prototype:ItemSubGroup::group).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `icons` | `array[IconData]` | yes | The icon that is shown to represent this item group. Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon that is shown to represent this item group. Only loaded, and mandatory if `icons` is not defined. |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. The base game use... |
| `order_in_recipe` | `Order` | yes | Item ingredients in recipes are ordered by item group. The `order_in_recipe` property can be used to specify the orde... |
