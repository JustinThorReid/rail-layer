# SpacePlatformHubPrototype
*typename: `space-platform-hub`*
*extends: `EntityWithOwnerPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `graphics_set` | `CargoBayConnectableGraphicsSet` | yes |  |
| `inventory_size` | `ItemStackIndex` | no |  |
| `dump_container` | `EntityID` | no | Name of a [ContainerPrototype](prototype:ContainerPrototype). |
| `persistent_ambient_sounds` | `PersistentWorldAmbientSoundsDefinition` | yes |  |
| `surface_render_parameters` | `SurfaceRenderParameters` | yes |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `default_speed_signal` | `SignalIDConnector` | yes |  |
| `default_damage_taken_signal` | `SignalIDConnector` | yes |  |
| `platform_repair_speed_modifier` | `float` | yes |  |
| `weight` | `Weight` | yes |  |
| `cargo_station_parameters` | `CargoStationParameters` | no |  |
| `build_grid_size` | `256` | yes | Has to be 256 to make blueprints snap to (0, 0) most of the time. |
