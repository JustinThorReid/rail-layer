# Concept: CargoDestination

The destination of a cargo pod.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `defines.cargo_destination` | no | The type of destination. |
| `station` | `LuaEntity` | yes | Only used if `type` is [station](runtime:defines.cargo_destination.station). Must be entity of type `cargo-landing-pa... |
| `hatch` | `LuaCargoHatch` | yes | Only used if `type` is [station](runtime:defines.cargo_destination.station). Must be connected to the station and not... |
| `transform_launch_products` | `boolean` | yes | Only used if `type` is [station](runtime:defines.cargo_destination.station) or [surface](runtime:defines.cargo_destin... |
| `surface` | `SurfaceIdentification` | yes | Only used if `type` is [surface](runtime:defines.cargo_destination.surface). |
| `position` | `MapPosition` | yes | Only used if `type` is [surface](runtime:defines.cargo_destination.surface). Determines the position on the surface t... |
| `land_at_exact_position` | `boolean` | yes | Only used if `type` is [surface](runtime:defines.cargo_destination.surface) and `position` is specified. Determines w... |
| `space_platform` | `LuaSpacePlatform` | yes | Only used if `type` is [space_platform](runtime:defines.cargo_destination.space_platform). Only used for sending spac... |
