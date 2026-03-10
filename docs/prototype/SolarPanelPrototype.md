# SolarPanelPrototype
*typename: `solar-panel`*
*extends: `EntityWithOwnerPrototype`*

A [solar panel](https://wiki.factorio.com/Solar_panel).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource` | no | Sets how this solar panel connects to the energy network. The most relevant property seems to be the output_priority. |
| `picture` | `SpriteVariations` | yes | The picture displayed for this solar panel. |
| `production` | `Energy` | no | The maximum amount of power this solar panel can produce. |
| `overlay` | `SpriteVariations` | yes | Overlay has to be empty or have same number of variations as `picture`. |
| `performance_at_day` | `double` | yes |  |
| `performance_at_night` | `double` | yes |  |
| `solar_coefficient_property` | `SurfacePropertyID` | yes | Surface property must have a positive [default value](prototype:SurfacePropertyPrototype::default_value). When [Solar... |
