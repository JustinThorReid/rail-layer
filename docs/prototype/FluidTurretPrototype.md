# FluidTurretPrototype
*typename: `fluid-turret`*
*extends: `TurretPrototype`*

A turret that uses [fluid](prototype:FluidPrototype) as ammunition.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid_buffer_size` | `FluidAmount` | no |  |
| `fluid_buffer_input_flow` | `FluidAmount` | no |  |
| `activation_buffer_ratio` | `FluidAmount` | no | Before an turret that was out of fluid ammunition is able to fire again, the `fluid_buffer_size` must fill to this pr... |
| `fluid_box` | `FluidBox` | no |  |
| `muzzle_light` | `LightDefinition` | yes |  |
| `enough_fuel_indicator_light` | `LightDefinition` | yes |  |
| `not_enough_fuel_indicator_light` | `LightDefinition` | yes |  |
| `muzzle_animation` | `Animation` | yes |  |
| `folded_muzzle_animation_shift` | `AnimatedVector` | yes |  |
| `preparing_muzzle_animation_shift` | `AnimatedVector` | yes |  |
| `prepared_muzzle_animation_shift` | `AnimatedVector` | yes |  |
| `starting_attack_muzzle_animation_shift` | `AnimatedVector` | yes |  |
| `attacking_muzzle_animation_shift` | `AnimatedVector` | yes |  |
| `ending_attack_muzzle_animation_shift` | `AnimatedVector` | yes |  |
| `folding_muzzle_animation_shift` | `AnimatedVector` | yes |  |
| `enough_fuel_indicator_picture` | `Sprite4Way` | yes |  |
| `not_enough_fuel_indicator_picture` | `Sprite4Way` | yes |  |
| `out_of_ammo_alert_icon` | `Sprite` | yes | The sprite will be drawn on top of fluid turrets that are out of fluid ammunition. If the `out_of_ammo_alert_icon` is... |
| `turret_base_has_direction` | `True` | no | Always `true`, forcing the turret's collision box to be affected by its rotation. |
| `attack_parameters` | `StreamAttackParameters` | no | Requires ammo_type in attack_parameters. |
