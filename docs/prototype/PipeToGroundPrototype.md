# PipeToGroundPrototype
*typename: `pipe-to-ground`*
*extends: `EntityWithOwnerPrototype`*

A [pipe to ground](https://wiki.factorio.com/Pipe_to_ground).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid_box` | `FluidBox` | no |  |
| `pictures` | `Sprite4Way` | yes |  |
| `frozen_patch` | `Sprite4Way` | yes |  |
| `visualization` | `Sprite4Way` | yes |  |
| `disabled_visualization` | `Sprite4Way` | yes |  |
| `draw_fluid_icon_override` | `boolean` | yes | Causes fluid icon to always be drawn, ignoring the usual pair requirement. |
