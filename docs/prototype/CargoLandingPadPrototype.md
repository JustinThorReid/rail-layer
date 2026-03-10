# CargoLandingPadPrototype
*typename: `cargo-landing-pad`*
*extends: `EntityWithOwnerPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `graphics_set` | `CargoBayConnectableGraphicsSet` | yes |  |
| `inventory_size` | `ItemStackIndex` | no |  |
| `trash_inventory_size` | `ItemStackIndex` | yes |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `cargo_station_parameters` | `CargoStationParameters` | no |  |
| `robot_animation` | `Animation` | yes | Drawn when a robot brings/takes items from this landing pad. |
| `robot_landing_location_offset` | `Vector` | yes | The offset from the center of this landing pad where a robot visually brings/takes items. |
| `robot_opened_duration` | `uint8` | yes |  |
| `robot_animation_sound` | `Sound` | yes | Played when a robot brings/takes items from this landing pad. Only loaded if `robot_animation` is defined. |
| `radar_range` | `uint32` | yes | In chunks. The radius of how many chunks this cargo landing pad charts around itself. |
| `radar_visualisation_color` | `Color` | yes |  |
