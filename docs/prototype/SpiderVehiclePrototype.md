# SpiderVehiclePrototype
*typename: `spider-vehicle`*
*extends: `VehiclePrototype`*

A [spidertron](https://wiki.factorio.com/Spidertron).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `BurnerEnergySource | VoidEnergySource` | no |  |
| `inventory_size` | `ItemStackIndex` | no |  |
| `graphics_set` | `SpiderVehicleGraphicsSet` | yes |  |
| `spider_engine` | `SpiderEngineSpecification` | no |  |
| `height` | `float` | no | The height of the spider affects the shooting height and the drawing of the graphics and lights. |
| `movement_energy_consumption` | `Energy` | no |  |
| `automatic_weapon_cycling` | `boolean` | no |  |
| `chain_shooting_cooldown_modifier` | `float` | no | This is applied whenever the spider shoots (manual and automatic targeting), `automatic_weapon_cycling` is true and t... |
| `torso_rotation_speed` | `float` | yes | The orientation of the torso of the spider affects the shooting direction and the drawing of the graphics and lights. |
| `torso_bob_speed` | `float` | yes | Cannot be negative. |
| `trash_inventory_size` | `ItemStackIndex` | yes | If set to 0 then the spider will not have a Logistics tab. |
| `guns` | `array[ItemID]` | yes | The guns this spider vehicle uses. |
