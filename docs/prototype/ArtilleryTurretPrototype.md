# ArtilleryTurretPrototype
*typename: `artillery-turret`*
*extends: `EntityWithOwnerPrototype`*

An [artillery turret](https://wiki.factorio.com/Artillery_turret).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `gun` | `ItemID` | no | Name of a [GunPrototype](prototype:GunPrototype). |
| `inventory_size` | `ItemStackIndex` | no | Must be > 0. |
| `ammo_stack_limit` | `ItemCountType` | no | Must be > 0. |
| `automated_ammo_count` | `ItemCountType` | yes | Must be > 0. The amount of ammo that inserters automatically insert into this artillery turret. |
| `turret_rotation_speed` | `double` | no |  |
| `manual_range_modifier` | `double` | no | Must be positive. |
| `alert_when_attacking` | `boolean` | yes |  |
| `disable_automatic_firing` | `boolean` | yes |  |
| `base_picture_secondary_draw_order` | `uint8` | yes |  |
| `base_picture_render_layer` | `RenderLayer` | yes |  |
| `base_picture` | `Animation4Way` | yes |  |
| `cannon_base_shift` | `Vector3D` | no |  |
| `cannon_base_pictures` | `RotatedSprite` | yes |  |
| `cannon_barrel_pictures` | `RotatedSprite` | yes |  |
| `rotating_sound` | `InterruptibleSound` | yes |  |
| `turn_after_shooting_cooldown` | `uint16` | yes |  |
| `cannon_parking_frame_count` | `uint16` | yes |  |
| `cannon_parking_speed` | `float` | yes | Must be positive. |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `cannon_barrel_recoil_shiftings` | `array[Vector3D]` | yes |  |
| `cannon_barrel_recoil_shiftings_load_correction_matrix` | `array[Vector3D]` | yes | Only loaded if `cannon_barrel_recoil_shiftings` is loaded. |
| `cannon_barrel_light_direction` | `Vector3D` | yes | Only loaded if `cannon_barrel_recoil_shiftings` is loaded. |
| `is_military_target` | `boolean` | yes | Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https:/... |
