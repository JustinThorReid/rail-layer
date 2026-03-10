# CargoBayPrototype
*typename: `cargo-bay`*
*extends: `EntityWithOwnerPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `graphics_set` | `CargoBayConnectableGraphicsSet` | yes |  |
| `platform_graphics_set` | `CargoBayConnectableGraphicsSet` | yes | A special variant which renders on space platforms. If not specified, the game will fall back to the regular graphics... |
| `inventory_size_bonus` | `ItemStackIndex` | no | Cannot be 0. |
| `hatch_definitions` | `array[CargoHatchDefinition]` | yes |  |
| `build_grid_size` | `2` | yes | Has to be 2 for 2x2 grid. |
