# ArtilleryWagonPrototype
*typename: `artillery-wagon`*
*extends: `RollingStockPrototype`*

An [artillery wagon](https://wiki.factorio.com/Artillery_wagon).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `gun` | `ItemID` | no | Name of a [GunPrototype](prototype:GunPrototype). |
| `inventory_size` | `ItemStackIndex` | no | Must be > 0. |
| `ammo_stack_limit` | `ItemCountType` | no | Must be > 0. |
| `automated_ammo_count` | `ItemCountType` | yes | Must be > 0. The amount of ammo that inserters automatically insert into this artillery wagon. |
| `turret_rotation_speed` | `double` | no |  |
| `manual_range_modifier` | `double` | no | Must be > 0. |
| `disable_automatic_firing` | `boolean` | yes |  |
| `cannon_base_pictures` | `RollingStockRotatedSlopedGraphics` | yes |  |
| `cannon_base_height` | `double` | yes |  |
| `cannon_base_shift_when_vertical` | `double` | yes |  |
| `cannon_base_shift_when_horizontal` | `double` | yes |  |
| `cannon_barrel_pictures` | `RollingStockRotatedSlopedGraphics` | yes |  |
| `rotating_sound` | `InterruptibleSound` | yes |  |
| `turn_after_shooting_cooldown` | `uint16` | yes |  |
| `cannon_parking_frame_count` | `uint16` | yes |  |
| `cannon_parking_speed` | `float` | yes | Must be positive. |
| `cannon_barrel_recoil_shiftings` | `array[Vector3D]` | yes |  |
| `cannon_barrel_recoil_shiftings_load_correction_matrix` | `array[Vector3D]` | yes | Only loaded if `cannon_barrel_recoil_shiftings` is loaded. |
| `cannon_barrel_light_direction` | `Vector3D` | yes | Only loaded if `cannon_barrel_recoil_shiftings` is loaded. |
