# OffshorePumpPrototype
*typename: `offshore-pump`*
*extends: `EntityWithOwnerPrototype`*

An [offshore pump](https://wiki.factorio.com/Offshore_pump).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid_box` | `FluidBox` | no |  |
| `pumping_speed` | `FluidAmount` | no | How many units of fluid are produced per tick. Must be > 0. |
| `fluid_source_offset` | `Vector` | no |  |
| `perceived_performance` | `PerceivedPerformance` | yes | Affects animation speed. |
| `graphics_set` | `OffshorePumpGraphicsSet` | yes |  |
| `energy_source` | `EnergySource` | no | Defines how the offshore pump is powered. When using an electric energy source and `drain` is not specified, it will ... |
| `energy_usage` | `Energy` | no | Sets how much energy this offshore pump consumes. Energy usage has to be positive. |
| `remove_on_tile_collision` | `boolean` | yes |  |
| `always_draw_fluid` | `boolean` | yes | If false, the offshore pump will not show fluid present (visually) before there is an output connected. The pump will... |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
