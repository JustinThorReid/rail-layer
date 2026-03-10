# RollingStockPrototype
*extends: `VehiclePrototype`*

The abstract base of all rolling stock.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `max_speed` | `double` | no | Maximum speed of the rolling stock in tiles/tick. In-game, the max speed of a train is `min(all_rolling_stock_max_spe... |
| `air_resistance` | `double` | no |  |
| `joint_distance` | `double` | no | The length between this rolling stocks front and rear joints. Joints are the point where connection_distance is measu... |
| `connection_distance` | `double` | no | The distance between the joint of this rolling stock and its connected rolling stocks joint. Maximum connection dista... |
| `pictures` | `RollingStockRotatedSlopedGraphics` | yes |  |
| `wheels` | `RollingStockRotatedSlopedGraphics` | yes |  |
| `vertical_selection_shift` | `double` | no |  |
| `drive_over_tie_trigger` | `TriggerEffect` | yes | Usually a sound to play when the rolling stock drives over a tie. The rolling stock is considered to be driving over ... |
| `drive_over_tie_trigger_minimal_speed` | `double` | yes |  |
| `tie_distance` | `double` | yes | In tiles. Used to determine how often `drive_over_tie_trigger` is triggered. |
| `back_light` | `LightDefinition` | yes |  |
| `stand_by_light` | `LightDefinition` | yes |  |
| `horizontal_doors` | `Animation` | yes |  |
| `vertical_doors` | `Animation` | yes |  |
| `color` | `Color` | yes |  |
| `allow_manual_color` | `boolean` | yes |  |
| `allow_robot_dispatch_in_automatic_mode` | `boolean` | yes |  |
| `default_copy_color_from_train_stop` | `boolean` | yes |  |
| `transition_collision_mask` | `CollisionMaskConnector` | yes | Defaults to the mask from [UtilityConstants::default_collision_masks](prototype:UtilityConstants::default_collision_m... |
| `elevated_collision_mask` | `CollisionMaskConnector` | yes | Defaults to the mask from [UtilityConstants::default_collision_masks](prototype:UtilityConstants::default_collision_m... |
| `elevated_selection_priority` | `uint8` | yes |  |
| `elevated_rail_sound` | `MainSound` | yes |  |
| `drive_over_elevated_tie_trigger` | `TriggerEffect` | yes |  |
| `door_opening_sound` | `InterruptibleSound` | yes | Cannot use `fade_ticks`. |
| `door_closing_sound` | `InterruptibleSound` | yes | Cannot use `fade_ticks`. |
