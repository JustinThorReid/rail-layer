# RailSupportPrototype
*typename: `rail-support`*
*extends: `EntityWithOwnerPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `graphics_set` | `RailSupportGraphicsSet` | no |  |
| `support_range` | `float` | yes | Must be lower than 500 and at least 1. |
| `not_buildable_if_no_rails` | `boolean` | yes |  |
| `snap_to_spots_distance` | `float` | yes |  |
| `collision_mask_allow_on_deep_oil_ocean` | `CollisionMaskConnector` | yes | Defaults to the mask from [UtilityConstants::default_collision_masks](prototype:UtilityConstants::default_collision_m... |
| `elevated_selection_boxes` | `array[BoundingBox]` | yes | Array must contain 8 items. |
| `build_grid_size` | `2` | yes | Has to be 2 for 2x2 grid. |
| `name` | `string` | no | Unique textual identification of the prototype. May only contain alphanumeric characters, dashes and underscores. May... |
