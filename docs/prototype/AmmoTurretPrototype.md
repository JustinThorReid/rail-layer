# AmmoTurretPrototype
*typename: `ammo-turret`*
*extends: `TurretPrototype`*

A turret that consumes [ammo items](prototype:AmmoItemPrototype).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource` | yes |  |
| `energy_per_shot` | `Energy` | yes |  |
| `inventory_size` | `ItemStackIndex` | no | Size of the ammo inventory. |
| `automated_ammo_count` | `ItemCountType` | no | The amount of ammo that inserters automatically insert into this turret. |
| `prepare_with_no_ammo` | `boolean` | yes |  |
