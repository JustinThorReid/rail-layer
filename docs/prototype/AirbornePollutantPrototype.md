# AirbornePollutantPrototype
*typename: `airborne-pollutant`*
*extends: `Prototype`*

A type of pollution that can spread throughout the chunks of a map.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `localised_name_with_amount` | `string` | yes | The translated plural string key to use when displaying this pollution's name with an amount. See [Tutorial:Localisat... |
| `chart_color` | `Color` | no |  |
| `icon` | `Sprite` | no |  |
| `affects_evolution` | `boolean` | no |  |
| `affects_water_tint` | `boolean` | no | If true, large amounts of this pollution will cause water tiles to turn a sickly green. |
| `damages_trees` | `boolean` | yes | If true, trees will occasionally take damage from this pollutant type. When they do, some amount of pollution is remo... |
