# SpaceConnectionPrototype
*typename: `space-connection`*
*extends: `Prototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `from` | `SpaceLocationID` | no |  |
| `to` | `SpaceLocationID` | no |  |
| `length` | `uint32` | yes | Length of the space connection in km. Cannot be 0. |
| `asteroid_spawn_definitions` | `array[SpaceConnectionAsteroidSpawnDefinition]` | yes |  |
| `icons` | `array[IconData]` | yes | Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon file. Only loaded, and mandatory if `icons` is not defined. |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
