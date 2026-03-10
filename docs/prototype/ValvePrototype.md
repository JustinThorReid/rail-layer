# ValvePrototype
*typename: `valve`*
*extends: `EntityWithOwnerPrototype`*

A passive device that provides limited control of fluid flow between pipelines.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `mode` | `ValveMode` | no |  |
| `threshold` | `float` | yes | Ignored if [ValvePrototype::mode](prototype:ValvePrototype::mode) is `"one-way"`. Must be between `0` and `1` inclusive. |
| `fluid_box` | `FluidBox` | no | Must have at least one `"output"` [FluidFlowDirection](prototype:FluidFlowDirection) and at least one `"input-output"... |
| `flow_rate` | `FluidAmount` | no | The max flow rate through the valve per tick. |
| `animations` | `Animation4Way` | yes |  |
| `frozen_patch` | `Sprite4Way` | yes |  |
