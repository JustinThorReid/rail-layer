# TransportBeltConnectablePrototype
*extends: `EntityWithOwnerPrototype`*

Abstract class that anything that is a belt or can connect to belts uses.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `belt_animation_set` | `TransportBeltAnimationSet` | yes |  |
| `speed` | `double` | no | The speed of the belt: `speed × 480 = x Items/second`. The raw value is expressed as the number of tiles traveled by ... |
| `animation_speed_coefficient` | `double` | yes |  |
| `collision_box` | `BoundingBox` | yes | Transport belt connectable entities must have [collision_box](prototype:EntityPrototype::collision_box) of an appropr... |
| `flags` | `EntityPrototypeFlags` | yes | Transport belt connectable entities cannot have the `"building-direction-8-way"` flag. |
