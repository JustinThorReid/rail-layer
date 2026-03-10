# GeneratorEquipmentPrototype
*typename: `generator-equipment`*
*extends: `EquipmentPrototype`*

Used by [portable fusion reactor](https://wiki.factorio.com/Portable_fusion_reactor). Provides power
in equipment grids. Can produce power for free or use a burner energy source.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `power` | `Energy` | no | The power output of this equipment. |
| `burner` | `BurnerEnergySource` | yes | If not defined, this equipment produces power for free. |
