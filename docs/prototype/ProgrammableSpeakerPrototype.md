# ProgrammableSpeakerPrototype
*typename: `programmable-speaker`*
*extends: `EntityWithOwnerPrototype`*

A [programmable speaker](https://wiki.factorio.com/Programmable_speaker).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource | VoidEnergySource` | no |  |
| `energy_usage_per_tick` | `Energy` | no |  |
| `sprite` | `Sprite` | yes |  |
| `maximum_polyphony` | `uint32` | no |  |
| `instruments` | `array[ProgrammableSpeakerInstrument]` | no |  |
| `audible_distance_modifier` | `float` | yes |  |
| `circuit_wire_max_distance` | `double` | yes |  |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
