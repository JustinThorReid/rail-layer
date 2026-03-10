# ElectricPolePrototype
*typename: `electric-pole`*
*extends: `EntityWithOwnerPrototype`*

An electric pole - part of the [electric system](https://wiki.factorio.com/Electric_system).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `pictures` | `RotatedSprite` | yes |  |
| `supply_area_distance` | `double` | no | The "radius" of this pole's supply area. Corresponds to *half* of the "supply area" in the item tooltip. If this is 3... |
| `connection_points` | `array[WireConnectionPoint]` | no |  |
| `radius_visualisation_picture` | `Sprite` | yes |  |
| `active_picture` | `Sprite` | yes | Drawn above the `pictures` when the electric pole is connected to an electric network. |
| `maximum_wire_distance` | `double` | yes | The maximum distance between this pole and any other connected pole - if two poles are farther apart than this, they ... |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `light` | `LightDefinition` | yes | Drawn when the electric pole is connected to an electric network. |
| `track_coverage_during_drag_building` | `boolean` | yes |  |
| `auto_connect_up_to_n_wires` | `uint8` | yes | `0` means disable auto-connect. |
| `rewire_neighbours_when_destroying` | `boolean` | yes |  |
