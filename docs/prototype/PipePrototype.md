# PipePrototype
*typename: `pipe`*
*extends: `EntityWithOwnerPrototype`*

An entity to transport fluids over a distance and between machines.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid_box` | `FluidBox` | no | The area of the entity where fluid/gas inputs, and outputs. |
| `horizontal_window_bounding_box` | `BoundingBox` | no |  |
| `vertical_window_bounding_box` | `BoundingBox` | no |  |
| `pictures` | `PipePictures` | yes | All graphics for this pipe. |
