# AmmoItemPrototype
*typename: `ammo`*
*extends: `ItemPrototype`*

Ammo used for a gun.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ammo_type` | `AmmoType | array[AmmoType]` | no | When using a plain [AmmoType](prototype:AmmoType) (no array), the ammo type applies to everything (`"default"`). When... |
| `magazine_size` | `float` | yes | Number of shots before ammo item is consumed. Must be >= `1`. |
| `reload_time` | `float` | yes | Amount of extra time (in ticks) it takes to reload the weapon after depleting the magazine. Must be >= `0`. |
| `ammo_category` | `AmmoCategoryID` | no |  |
| `shoot_protected` | `boolean` | yes |  |
