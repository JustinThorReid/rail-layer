# Concept: TileSearchFilters

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | yes |  |
| `position` | `MapPosition` | yes | Ignored if not given with radius. |
| `radius` | `double` | yes | If given with position, will return all tiles within the radius of the position. |
| `name` | `TileID | array[TileID]` | yes | An empty array means nothing matches the name filter. |
| `limit` | `uint32` | yes |  |
| `has_hidden_tile` | `boolean` | yes |  |
| `has_double_hidden_tile` | `boolean` | yes | Can be further filtered by supplying a `force` filter. |
| `has_tile_ghost` | `boolean` | yes | Can be further filtered by supplying a `force` filter. |
| `to_be_deconstructed` | `boolean` | yes | Can be further filtered by supplying a `force` filter. |
| `collision_mask` | `CollisionLayerID | array[CollisionLayerID] | dict[CollisionLayerID, True]` | yes |  |
| `force` | `ForceSet` | yes |  |
| `invert` | `boolean` | yes | If the filters should be inverted. |
