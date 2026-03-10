# ThrusterPrototype
*typename: `thruster`*
*extends: `EntityWithOwnerPrototype`*

Consumes two fluids as fuel to produce thrust for a space platform.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `min_performance` | `ThrusterPerformancePoint` | no |  |
| `max_performance` | `ThrusterPerformancePoint` | no | `max_performance.fluid_volume` must not be smaller than `min_performance.fluid_volume`. |
| `fuel_fluid_box` | `FluidBox` | no | If a [filter](prototype:FluidBox::filter) is set for this fluidbox it determines what the thruster considers the firs... |
| `oxidizer_fluid_box` | `FluidBox` | no | If a [filter](prototype:FluidBox::filter) is set for this fluidbox it determines what the thruster considers the seco... |
| `graphics_set` | `ThrusterGraphicsSet` | yes |  |
| `plumes` | `PlumesSpecification` | yes |  |
