# GatePrototype
*typename: `gate`*
*extends: `EntityWithOwnerPrototype`*

A [gate](https://wiki.factorio.com/Gate).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `vertical_animation` | `Animation` | yes |  |
| `horizontal_animation` | `Animation` | yes |  |
| `vertical_rail_animation_left` | `Animation` | yes |  |
| `vertical_rail_animation_right` | `Animation` | yes |  |
| `horizontal_rail_animation_left` | `Animation` | yes |  |
| `horizontal_rail_animation_right` | `Animation` | yes |  |
| `vertical_rail_base` | `Animation` | yes |  |
| `horizontal_rail_base` | `Animation` | yes |  |
| `wall_patch` | `Animation` | yes |  |
| `opening_speed` | `float` | no |  |
| `activation_distance` | `double` | no |  |
| `timeout_to_close` | `uint32` | no |  |
| `opening_sound` | `Sound` | yes | Played when the gate opens. |
| `closing_sound` | `Sound` | yes | Played when the gate closes. |
| `fadeout_interval` | `uint32` | yes |  |
| `opened_collision_mask` | `CollisionMaskConnector` | yes | This collision mask is used when the gate is open. Defaults to the mask from [UtilityConstants::default_collision_mas... |
