# SolarPanelEquipmentPrototype
*typename: `solar-panel-equipment`*
*extends: `EquipmentPrototype`*

A [portable solar panel](https://wiki.factorio.com/Portable_solar_panel).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `power` | `Energy` | no | How much power should be provided. |
| `performance_at_day` | `double` | yes |  |
| `performance_at_night` | `double` | yes |  |
| `solar_coefficient_property` | `SurfacePropertyID` | yes | Surface property must have a positive [default value](prototype:SurfacePropertyPrototype::default_value). When [Solar... |
