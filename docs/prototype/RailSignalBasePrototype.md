# RailSignalBasePrototype
*extends: `EntityWithOwnerPrototype`*

The abstract base entity for both rail signals.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ground_picture_set` | `RailSignalPictureSet` | no |  |
| `elevated_picture_set` | `RailSignalPictureSet` | no |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `default_red_output_signal` | `SignalIDConnector` | yes |  |
| `default_orange_output_signal` | `SignalIDConnector` | yes |  |
| `default_green_output_signal` | `SignalIDConnector` | yes |  |
| `default_blue_output_signal` | `SignalIDConnector` | yes |  |
| `elevated_collision_mask` | `CollisionMaskConnector` | yes | Defaults to the mask from [UtilityConstants::default_collision_masks](prototype:UtilityConstants::default_collision_m... |
| `elevated_selection_priority` | `uint8` | yes |  |
| `collision_box` | `BoundingBox` | yes | The [collision_box](prototype:EntityPrototype::collision_box) of rail signals is hardcoded to `{{-0.2, -0.2}, {0.2, 0... |
| `flags` | `EntityPrototypeFlags` | yes | The "placeable-off-grid" flag will be ignored for rail signals. |
