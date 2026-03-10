# PumpPrototype
*typename: `pump`*
*extends: `EntityWithOwnerPrototype`*

The pump is used to transfer fluids between tanks, fluid wagons and pipes.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid_box` | `FluidBox` | no | The area of the entity where fluid travels. |
| `energy_source` | `EnergySource` | no | The type of energy the pump uses. |
| `energy_usage` | `Energy` | no | The amount of energy the pump uses. |
| `pumping_speed` | `FluidAmount` | no | The amount of fluid this pump transfers per tick. |
| `animations` | `Animation4Way` | yes | The animation for the pump. |
| `fluid_wagon_connector_speed` | `double` | yes |  |
| `fluid_wagon_connector_alignment_tolerance` | `double` | yes |  |
| `fluid_wagon_connector_frame_count` | `uint8` | yes |  |
| `flow_scaling` | `boolean` | yes | When true, pump will reduce pumping speed based on fullness of the input fluid segment. |
| `fluid_animation` | `Animation4Way` | yes |  |
| `glass_pictures` | `Sprite4Way` | yes |  |
| `frozen_patch` | `Sprite4Way` | yes |  |
| `circuit_wire_max_distance` | `double` | yes |  |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
| `fluid_wagon_connector_graphics` | `FluidWagonConnectorGraphics` | yes |  |
