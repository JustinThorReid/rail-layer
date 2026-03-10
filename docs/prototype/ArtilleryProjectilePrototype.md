# ArtilleryProjectilePrototype
*typename: `artillery-projectile`*
*extends: `EntityPrototype`*

The projectile shot by [artillery](https://wiki.factorio.com/Artillery).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `reveal_map` | `boolean` | no |  |
| `picture` | `Sprite` | yes |  |
| `shadow` | `Sprite` | yes |  |
| `chart_picture` | `Sprite` | yes |  |
| `action` | `Trigger` | yes |  |
| `final_action` | `Trigger` | yes |  |
| `height_from_ground` | `float` | yes |  |
| `rotatable` | `boolean` | yes | Whether the picture of the projectile is rotated to match the direction of travel. |
| `map_color` | `Color` | no |  |
| `collision_box` | `BoundingBox` | yes | Must have a collision box size of zero. |
