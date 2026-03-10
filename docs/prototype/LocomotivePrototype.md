# LocomotivePrototype
*typename: `locomotive`*
*extends: `RollingStockPrototype`*

A [locomotive](https://wiki.factorio.com/Locomotive).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `max_power` | `Energy` | no |  |
| `reversing_power_modifier` | `double` | no |  |
| `energy_source` | `BurnerEnergySource | VoidEnergySource` | no |  |
| `front_light` | `LightDefinition` | yes |  |
| `front_light_pictures` | `RollingStockRotatedSlopedGraphics` | yes |  |
| `darkness_to_render_light_animation` | `float` | yes |  |
| `max_snap_to_train_stop_distance` | `float` | yes | In tiles. A locomotive will snap to a nearby train stop when the player places it within this distance to the stop. |
