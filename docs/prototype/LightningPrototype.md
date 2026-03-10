# LightningPrototype
*typename: `lightning`*
*extends: `EntityPrototype`*

Lightning randomly hits entities on planets with
[lightning_properties](prototype:PlanetPrototype::lightning_properties).  If a [lightning
attractor](prototype:LightningAttractorPrototype) is hit by lightning it will absorb the lightning
hit for energy.  If a something that is not an attractor is hit by lightning it will be damaged by
the strike.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `graphics_set` | `LightningGraphicsSet` | yes |  |
| `sound` | `Sound` | yes |  |
| `attracted_volume_modifier` | `float` | yes |  |
| `strike_effect` | `Trigger` | yes | Effect that is triggered when lightning strikes something that is not a lightning attractor. Triggered before `damage... |
| `attractor_hit_effect` | `Trigger` | yes | Effect that is triggered when lightning hits a [lightning attractor](prototype:LightningAttractorPrototype). Triggere... |
| `source_offset` | `Vector` | yes |  |
| `source_variance` | `Vector` | yes |  |
| `damage` | `double` | yes | When lightning strikes something that is not a lightning attractor, this damage is applied to the target. |
| `energy` | `Energy` | yes | When lightning hits a [lightning attractor](prototype:LightningAttractorPrototype), this amount of energy is transfer... |
| `time_to_damage` | `uint16` | yes | Must be less than or equal to `effect_duration`. |
| `effect_duration` | `uint16` | no |  |
