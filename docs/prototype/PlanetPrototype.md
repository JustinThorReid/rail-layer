# PlanetPrototype
*typename: `planet`*
*extends: `SpaceLocationPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `map_seed_offset` | `uint32` | yes |  |
| `entities_require_heating` | `boolean` | yes |  |
| `pollutant_type` | `AirbornePollutantID` | yes |  |
| `persistent_ambient_sounds` | `PersistentWorldAmbientSoundsDefinition` | yes |  |
| `surface_render_parameters` | `SurfaceRenderParameters` | yes |  |
| `player_effects` | `Trigger` | yes |  |
| `ticks_between_player_effects` | `MapTick` | yes |  |
| `map_gen_settings` | `PlanetPrototypeMapGenSettings` | yes |  |
| `surface_properties` | `dict[SurfacePropertyID, double]` | yes |  |
| `lightning_properties` | `LightningProperties` | yes |  |
