# ProjectilePrototype
*typename: `projectile`*
*extends: `EntityPrototype`*

Entity with limited lifetime that can hit other entities and has triggers when this happens.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `acceleration` | `double` | no | Must be != 0 if `turning_speed_increases_exponentially_with_projectile_speed` is true. |
| `animation` | `RotatedAnimationVariations` | yes |  |
| `rotatable` | `boolean` | yes | Whether the animation of the projectile is rotated to match the direction of travel. |
| `enable_drawing_with_mask` | `boolean` | yes |  |
| `direction_only` | `boolean` | yes | Setting this to true can be used to disable projectile homing behaviour. |
| `hit_at_collision_position` | `boolean` | yes | When true the entity is hit at the position on its collision box the projectile first collides with. When false the e... |
| `force_condition` | `ForceCondition` | yes |  |
| `piercing_damage` | `float` | yes | Whenever an entity is hit by the projectile, this number gets reduced by the health of the entity. If the number is t... |
| `max_speed` | `double` | yes | Must be greater than or equal to 0. |
| `turn_speed` | `float` | yes | Must be greater than or equal to 0. |
| `speed_modifier` | `Vector` | yes |  |
| `height` | `double` | yes |  |
| `action` | `Trigger` | yes | Executed when the projectile hits something. |
| `final_action` | `Trigger` | yes | Executed when the projectile hits something, after `action` and only if the entity that was hit was destroyed. The pr... |
| `light` | `LightDefinition` | yes |  |
| `smoke` | `array[SmokeSource]` | yes |  |
| `hit_collision_mask` | `CollisionMaskConnector` | yes | Defaults to the mask from [UtilityConstants::default_collision_masks](prototype:UtilityConstants::default_collision_m... |
| `turning_speed_increases_exponentially_with_projectile_speed` | `boolean` | yes |  |
| `shadow` | `RotatedAnimationVariations` | yes |  |
