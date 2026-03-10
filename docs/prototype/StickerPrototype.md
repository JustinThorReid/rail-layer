# StickerPrototype
*typename: `sticker`*
*extends: `EntityPrototype`*

Entity that sticks to another entity, and damages/slows it. Stickers can only be attached to
[UnitPrototype](prototype:UnitPrototype), [CharacterPrototype](prototype:CharacterPrototype),
[CarPrototype](prototype:CarPrototype) and
[SpiderVehiclePrototype](prototype:SpiderVehiclePrototype).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `duration_in_ticks` | `uint32` | no | Must be > 0. |
| `animation` | `Animation` | yes |  |
| `render_layer` | `RenderLayer` | yes |  |
| `damage_interval` | `uint32` | yes | Interval between application of `damage_per_tick`, in ticks. |
| `spread_fire_entity` | `EntityID` | yes | If this is given, this sticker is considered a "fire sticker" for some functions, such as [BaseAttackParameters::fire... |
| `fire_spread_cooldown` | `uint8` | yes |  |
| `fire_spread_radius` | `float` | yes |  |
| `stickers_per_square_meter` | `float` | yes |  |
| `force_visibility` | `ForceCondition` | yes |  |
| `single_particle` | `boolean` | yes |  |
| `use_damage_substitute` | `boolean` | yes |  |
| `damage_per_tick` | `DamageParameters` | yes | Applied every `damage_interval` ticks, so may not necessarily be "per tick". |
| `target_movement_modifier` | `float` | yes | Less than 1 to reduce movement speed, more than 1 to increase it. |
| `target_movement_modifier_from` | `float` | yes | The modifier value when the sticker is attached. It linearly changes over time to reach `target_movement_modifier_to`. |
| `target_movement_modifier_to` | `float` | yes | The modifier value when the sticker expires. It linearly changes over time starting from `target_movement_modifier_fr... |
| `target_movement_max` | `float` | yes | The maximum movement speed for the target. Negative values are ignored. |
| `target_movement_max_from` | `float` | yes | The maximum movement speed for the target when the sticker is attached. It linearly changes over time to reach `targe... |
| `target_movement_max_to` | `float` | yes | The maximum movement speed for the target when the sticker expires. It linearly changes over time starting from `targ... |
| `ground_target` | `boolean` | yes | If true, causes the target entity to become "grounded", disabling flight. This only applies to Character entities wea... |
| `vehicle_speed_modifier` | `float` | yes | Less than 1 to reduce vehicle speed, more than 1 to increase it. |
| `vehicle_speed_modifier_from` | `float` | yes | Works similarly to `target_movement_modifier_from`. |
| `vehicle_speed_modifier_to` | `float` | yes | Works similarly to `target_movement_modifier_to`. |
| `vehicle_speed_max` | `float` | yes | The maximum movement speed for vehicles. Negative values are ignored. |
| `vehicle_speed_max_from` | `float` | yes | The maximum movement speed for vehicles when the sticker is attached. It linearly changes over time to reach `vehicle... |
| `vehicle_speed_max_to` | `float` | yes | The maximum movement speed for vehicles when the sticker expires. It linearly changes over time starting from `vehicl... |
| `vehicle_friction_modifier` | `float` | yes |  |
| `vehicle_friction_modifier_from` | `float` | yes | Works similarly to `target_movement_modifier_from`. |
| `vehicle_friction_modifier_to` | `float` | yes | Works similarly to `target_movement_modifier_to`. |
| `selection_box_type` | `CursorBoxType` | yes | Using this property marks the sticker as a "selection sticker", meaning that the selection box will be rendered aroun... |
| `update_effects` | `array[TriggerEffectWithCooldown]` | yes | Effects (with cooldowns) to trigger every tick. |
| `hidden` | `True` | no | The `hidden` property of stickers is hardcoded to `true`. |
| `hidden_in_factoriopedia` | `True` | no | The `hidden_in_factoriopedia` property of stickers is hardcoded to `true`. |
