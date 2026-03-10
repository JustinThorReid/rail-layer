# RailRampPrototype
*typename: `rail-ramp`*
*extends: `RailPrototype`*

A rail ramp.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `support_range` | `float` | yes | Must be lower than 500 and at least 1. |
| `collision_mask_allow_on_deep_oil_ocean` | `CollisionMaskConnector` | yes | Defaults to the mask from [UtilityConstants::default_collision_masks](prototype:UtilityConstants::default_collision_m... |
| `collision_box` | `BoundingBox` | yes | The [collision_box](prototype:EntityPrototype::collision_box) of straight rail is hardcoded to `{{-1.6, -7.6}, {1.6, ... |
| `name` | `string` | no | Unique textual identification of the prototype. May only contain alphanumeric characters, dashes and underscores. May... |
