# StorageTankPrototype
*typename: `storage-tank`*
*extends: `EntityWithOwnerPrototype`*

A [storage tank](https://wiki.factorio.com/Storage_tank).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `fluid_box` | `FluidBox` | no |  |
| `window_bounding_box` | `BoundingBox` | no | The location of the window showing the contents. Note that for `window_background` the width and height are determine... |
| `pictures` | `StorageTankPictures` | yes |  |
| `flow_length_in_ticks` | `uint32` | no | Must be positive. Used for determining the x position inside the `flow_sprite` when drawing the storage tank. Does no... |
| `two_direction_only` | `boolean` | yes |  |
| `show_fluid_icon` | `boolean` | yes | Whether the "alt-mode icon" should be drawn at all. |
| `circuit_wire_max_distance` | `double` | yes |  |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
