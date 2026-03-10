# SpaceLocationPrototype
*typename: `space-location`*
*extends: `Prototype`*

A space location, such as a planet or the solar system edge.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `gravity_pull` | `double` | yes | A value which modifies platform speed; is subtracted when traveling from this location and added when traveling to th... |
| `distance` | `double` | no | Distance from the sun in map coordinates. |
| `orientation` | `RealOrientation` | no | Angle in relation to the sun. |
| `magnitude` | `double` | yes | The apparent size of the space location in map coordinates. |
| `parked_platforms_orientation` | `RealOrientation` | yes | The orientation where parked space platforms will be drawn. |
| `label_orientation` | `RealOrientation` | yes | The orientation where the location's name will be drawn. |
| `draw_orbit` | `boolean` | yes | If `false`, the orbital ring around the sun will not be drawn for this location. |
| `solar_power_in_space` | `double` | yes |  |
| `asteroid_spawn_influence` | `double` | yes | If greater than 0, `asteroid_spawn_definitions` will be used on space connections of this location, interpolated base... |
| `fly_condition` | `boolean` | yes | When set to true, it means that this connection offers fly condition rather than wait condition at the destination |
| `auto_save_on_first_trip` | `boolean` | yes |  |
| `procession_graphic_catalogue` | `ProcessionGraphicCatalogue` | yes |  |
| `procession_audio_catalogue` | `ProcessionAudioCatalogue` | yes |  |
| `platform_procession_set` | `ProcessionSet` | yes | These transitions are used for any platform stopped at this location. |
| `planet_procession_set` | `ProcessionSet` | yes | These transitions are used for anything traveling from the surface associated with this location. |
| `icons` | `array[IconData]` | yes | Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon file. Only loaded, and mandatory if `icons` is not defined. |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
| `starmap_icons` | `array[IconData]` | yes | Can't be an empty array. |
| `starmap_icon` | `FileName` | yes | Path to the icon file. Only loaded if `starmap_icons` is not defined. |
| `starmap_icon_size` | `SpriteSizeType` | yes | The size of the starmap icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `... |
| `starmap_icon_orientation` | `RealOrientation` | yes | Orientation of the starmap icon, defaults to pointing towards the sun. |
| `asteroid_spawn_definitions` | `array[SpaceLocationAsteroidSpawnDefinition]` | yes |  |
| `hidden` | `boolean` | yes | Hides the space location from the planet selection lists and the space map. |
