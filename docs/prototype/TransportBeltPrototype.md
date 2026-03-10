# TransportBeltPrototype
*typename: `transport-belt`*
*extends: `TransportBeltConnectablePrototype`*

A [transport belt](https://wiki.factorio.com/Transport_belt).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `connector_frame_sprites` | `TransportBeltConnectorFrame` | yes |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `array[CircuitConnectorDefinition]` | yes | Set of 7 [circuit connector definitions](prototype:CircuitConnectorDefinition) in order: X, H, V, SE, SW, NE and NW. |
| `belt_animation_set` | `TransportBeltAnimationSetWithCorners` | yes |  |
| `related_underground_belt` | `EntityID` | yes | The name of the [UndergroundBeltPrototype](prototype:UndergroundBeltPrototype) which is used in quick-replace fashion... |
