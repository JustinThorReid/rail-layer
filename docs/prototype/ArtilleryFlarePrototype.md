# ArtilleryFlarePrototype
*typename: `artillery-flare`*
*extends: `EntityPrototype`*

The entity spawned by the [artillery targeting
remote](https://wiki.factorio.com/Artillery_targeting_remote).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `pictures` | `AnimationVariations` | yes | Picture variation count and individual frame count must be equal to shadow variation count. |
| `life_time` | `uint16` | no |  |
| `shadows` | `AnimationVariations` | yes | Shadow variation variation count and individual frame count must be equal to picture variation count. |
| `render_layer` | `RenderLayer` | yes |  |
| `render_layer_when_on_ground` | `RenderLayer` | yes |  |
| `regular_trigger_effect` | `TriggerEffect` | yes |  |
| `regular_trigger_effect_frequency` | `uint32` | yes |  |
| `ended_in_water_trigger_effect` | `TriggerEffect` | yes |  |
| `movement_modifier_when_on_ground` | `double` | yes |  |
| `movement_modifier` | `double` | yes |  |
| `creation_shift` | `Vector` | yes |  |
| `initial_speed` | `Vector` | yes |  |
| `initial_height` | `float` | yes |  |
| `initial_vertical_speed` | `float` | yes |  |
| `initial_frame_speed` | `float` | yes |  |
| `shots_per_flare` | `uint32` | yes | How many artillery shots should be fired at the position of this flare. |
| `early_death_ticks` | `uint32` | yes | How long this flare stays alive after `shots_per_flare` amount of shots have been shot at it. |
| `shot_category` | `AmmoCategoryID` | yes | Only artillery turrets/wagons whose ammo's [ammo_category](prototype:AmmoItemPrototype::ammo_category) matches this c... |
| `map_color` | `Color` | no |  |
| `selection_priority` | `uint8` | yes | The entity with the higher number is selectable before the entity with the lower number. The value `0` will be treate... |
