# TurretPrototype
*typename: `turret`*
*extends: `EntityWithOwnerPrototype`*

A turret that needs no extra ammunition. See the children for turrets that need some kind of
ammunition.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `attack_parameters` | `AttackParameters` | no | Requires ammo_type in attack_parameters unless this is a [AmmoTurretPrototype](prototype:AmmoTurretPrototype). |
| `folded_animation` | `RotatedAnimation8Way` | no |  |
| `call_for_help_radius` | `double` | no |  |
| `attack_target_mask` | `TriggerTargetMask` | yes |  |
| `ignore_target_mask` | `TriggerTargetMask` | yes |  |
| `shoot_in_prepare_state` | `boolean` | yes |  |
| `start_attacking_only_when_can_shoot` | `boolean` | yes | When `false` the turret will enter `starting_attack` state without checking its ammo or energy levels. [FluidTurretPr... |
| `turret_base_has_direction` | `boolean` | yes | When `true` the turret's collision box will affected by its rotation. |
| `random_animation_offset` | `boolean` | yes |  |
| `attack_from_start_frame` | `boolean` | yes |  |
| `allow_turning_when_starting_attack` | `boolean` | yes |  |
| `gun_animation_secondary_draw_order` | `uint8` | yes |  |
| `gun_animation_render_layer` | `RenderLayer` | yes |  |
| `graphics_set` | `TurretGraphicsSet` | no |  |
| `preparing_animation` | `RotatedAnimation8Way` | yes |  |
| `prepared_animation` | `RotatedAnimation8Way` | yes |  |
| `prepared_alternative_animation` | `RotatedAnimation8Way` | yes |  |
| `starting_attack_animation` | `RotatedAnimation8Way` | yes |  |
| `attacking_animation` | `RotatedAnimation8Way` | yes |  |
| `energy_glow_animation` | `RotatedAnimation8Way` | yes |  |
| `resource_indicator_animation` | `RotatedAnimation8Way` | yes |  |
| `ending_attack_animation` | `RotatedAnimation8Way` | yes |  |
| `folding_animation` | `RotatedAnimation8Way` | yes |  |
| `integration` | `Sprite` | yes |  |
| `special_effect` | `TurretSpecialEffect` | yes |  |
| `glow_light_intensity` | `float` | yes | The intensity of light in the form of `energy_glow_animation` drawn on top of `energy_glow_animation`. |
| `energy_glow_animation_flicker_strength` | `float` | yes | The range of the flickering of the alpha of `energy_glow_animation`. Default is range 0.2, so animation alpha can be ... |
| `starting_attack_sound` | `Sound` | yes |  |
| `dying_sound` | `Sound` | yes |  |
| `preparing_sound` | `Sound` | yes |  |
| `folding_sound` | `Sound` | yes |  |
| `prepared_sound` | `Sound` | yes |  |
| `prepared_alternative_sound` | `Sound` | yes |  |
| `rotating_sound` | `InterruptibleSound` | yes |  |
| `default_speed` | `float` | yes |  |
| `default_speed_secondary` | `float` | yes |  |
| `default_speed_when_killed` | `float` | yes |  |
| `default_starting_progress_when_killed` | `float` | yes |  |
| `rotation_speed` | `float` | yes |  |
| `rotation_speed_secondary` | `float` | yes |  |
| `rotation_speed_when_killed` | `float` | yes |  |
| `rotation_starting_progress_when_killed` | `float` | yes |  |
| `preparing_speed` | `float` | yes | Controls the speed of the preparing_animation: `1 ÷ preparing_speed = duration of the preparing_animation` |
| `preparing_speed_secondary` | `float` | yes |  |
| `preparing_speed_when_killed` | `float` | yes |  |
| `preparing_starting_progress_when_killed` | `float` | yes |  |
| `folded_speed` | `float` | yes | It's randomized whether a particular turret uses the primary or the secondary speed for its animations. Controls the ... |
| `folded_speed_secondary` | `float` | yes | It's randomized whether a particular turret uses the primary or the secondary speed for its animations. Controls the ... |
| `folded_speed_when_killed` | `float` | yes |  |
| `folded_starting_progress_when_killed` | `float` | yes |  |
| `prepared_speed` | `float` | yes | It's randomized whether a particular turret uses the primary or the secondary speed for its animations. Controls the ... |
| `prepared_speed_secondary` | `float` | yes | It's randomized whether a particular turret uses the primary or the secondary speed for its animations. Controls the ... |
| `prepared_speed_when_killed` | `float` | yes |  |
| `prepared_starting_progress_when_killed` | `float` | yes |  |
| `prepared_alternative_speed` | `float` | yes | It's randomized whether a particular turret uses the primary or the secondary speed for its animations. Controls the ... |
| `prepared_alternative_speed_secondary` | `float` | yes | It's randomized whether a particular turret uses the primary or the secondary speed for its animations. Controls the ... |
| `prepared_alternative_speed_when_killed` | `float` | yes |  |
| `prepared_alternative_starting_progress_when_killed` | `float` | yes |  |
| `prepared_alternative_chance` | `float` | yes | The chance for `prepared_alternative_animation` to be used. |
| `starting_attack_speed` | `float` | yes | Controls the speed of the starting_attack_animation: `1 ÷ starting_attack_speed = duration of the starting_attack_ani... |
| `starting_attack_speed_secondary` | `float` | yes |  |
| `starting_attack_speed_when_killed` | `float` | yes |  |
| `starting_attack_starting_progress_when_killed` | `float` | yes |  |
| `attacking_speed` | `float` | yes | Controls the speed of the attacking_animation: `1 ÷ attacking_speed = duration of the attacking_animation` |
| `ending_attack_speed` | `float` | yes | Controls the speed of the ending_attack_animation: `1 ÷ ending_attack_speed = duration of the ending_attack_animation` |
| `ending_attack_speed_secondary` | `float` | yes |  |
| `ending_attack_speed_when_killed` | `float` | yes |  |
| `ending_attack_starting_progress_when_killed` | `float` | yes |  |
| `folding_speed` | `float` | yes | Controls the speed of the folding_animation: `1 ÷ folding_speed = duration of the folding_animation` |
| `folding_speed_secondary` | `float` | yes |  |
| `folding_speed_when_killed` | `float` | yes |  |
| `folding_starting_progress_when_killed` | `float` | yes |  |
| `prepare_range` | `double` | yes |  |
| `alert_when_attacking` | `boolean` | yes |  |
| `spawn_decorations_on_expansion` | `boolean` | yes | Whether `spawn_decoration` should be spawned when this turret is created through [enemy expansion](https://wiki.facto... |
| `folded_animation_is_stateless` | `boolean` | yes |  |
| `unfolds_before_dying` | `boolean` | yes |  |
| `spawn_decoration` | `array[CreateDecorativesTriggerEffectItem]` | yes | Decoratives to be created when the spawner is created by the [map generator](https://wiki.factorio.com/Map_generator)... |
| `folded_state_corpse` | `EntityID | array[EntityID]` | yes |  |
| `can_retarget_while_starting_attack` | `boolean` | yes |  |
| `is_military_target` | `boolean` | yes | Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https:/... |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `array[CircuitConnectorDefinition]` | yes | Set of [circuit connector definitions](prototype:CircuitConnectorDefinition) for all directions used by this turret. ... |
