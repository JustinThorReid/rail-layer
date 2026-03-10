# Concept: MapGenSettings

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `autoplace_controls` | `dict[string, AutoplaceControl]` | no | Indexed by autoplace control prototype name. |
| `default_enable_all_autoplace_controls` | `boolean` | no | Whether undefined `autoplace_controls` should fall back to the default controls or not. Defaults to `true`. |
| `autoplace_settings` | `dict['entity' | 'tile' | 'decorative', AutoplaceSettings]` | no | Each setting in this dictionary maps the string type to the settings for that type. |
| `seed` | `uint32` | no | The random seed used to generated this map. |
| `width` | `uint32` | no | Width in tiles. If `0`, the map has 'infinite' width, with the actual limitation being one million tiles in each dire... |
| `height` | `uint32` | no | Height in tiles. If `0`, the map has 'infinite' height, with the actual limitation being one million tiles in each di... |
| `starting_area` | `MapGenSize` | no | Size of the starting area. |
| `starting_points` | `array[MapPosition]` | no | Positions of the starting areas. |
| `peaceful_mode` | `boolean` | no | Whether enemy creatures will not attack unless the player first attacks them. |
| `no_enemies_mode` | `boolean` | no | Whether enemy creatures will not naturally spawn from spawners, map gen, or trigger effects. |
| `property_expression_names` | `PropertyExpressionNames` | no | Overrides for tile property value generators. |
| `cliff_settings` | `CliffPlacementSettings` | no | Map generation settings for entities of the type "cliff". |
| `territory_settings` | `TerritorySettings` | no |  |
