# AccumulatorPrototype
*typename: `accumulator`*
*extends: `EntityWithOwnerPrototype`*

Entity with energy source with specialised animation for charging/discharging. Used for the
[accumulator](https://wiki.factorio.com/Accumulator) entity.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource` | no | The capacity of the energy source buffer specifies the capacity of the accumulator. |
| `chargable_graphics` | `ChargableGraphics` | yes |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `default_output_signal` | `SignalIDConnector` | yes | The name of the signal that is the default for when an accumulator is connected to the circuit network. |
