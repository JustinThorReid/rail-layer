# TileEffectDefinition
*typename: `tile-effect`*

Used to define the parameters for tile shaders.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'tile-effect'` | no |  |
| `name` | `string` | no | Name of the tile-effect. |
| `shader` | `'water' | 'space' | 'puddle'` | no |  |
| `water` | `WaterTileEffectParameters` | yes | Only loaded, and mandatory if `shader` is `"water"`. |
| `space` | `SpaceTileEffectParameters` | yes | Only loaded, and mandatory if `shader` is `"space"`. |
| `puddle` | `PuddleTileEffectParameters` | yes | Only loaded, and mandatory if `shader` is `"puddle"`. |
