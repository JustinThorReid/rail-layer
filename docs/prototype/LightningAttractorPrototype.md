# LightningAttractorPrototype
*typename: `lightning-attractor`*
*extends: `EntityWithOwnerPrototype`*

Absorbs [lightning](prototype:LightningPrototype) and optionally converts it into electricity.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `chargable_graphics` | `ChargableGraphics` | yes |  |
| `lightning_strike_offset` | `MapPosition` | yes |  |
| `efficiency` | `double` | yes | Cannot be less than 0. |
| `range_elongation` | `double` | yes |  |
| `energy_source` | `ElectricEnergySource` | yes | Mandatory if `efficiency` is larger than 0. May not be defined if `efficiency` is 0. |
