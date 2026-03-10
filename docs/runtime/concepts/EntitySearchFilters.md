# Concept: EntitySearchFilters

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | yes |  |
| `position` | `MapPosition` | yes | Has precedence over area field. |
| `radius` | `double` | yes | If given with position, will return all entities within the radius of the position. |
| `name` | `EntityID | array[EntityID]` | yes | An empty array means nothing matches the name filter. |
| `type` | `string | array[string]` | yes | An empty array means nothing matches the type filter. |
| `ghost_name` | `EntityID | array[EntityID]` | yes | An empty array means nothing matches the ghost_name filter. |
| `ghost_type` | `string | array[string]` | yes | An empty array means nothing matches the ghost_type filter. |
| `direction` | `defines.direction | array[defines.direction]` | yes |  |
| `collision_mask` | `CollisionLayerID | array[CollisionLayerID] | dict[CollisionLayerID, True]` | yes |  |
| `force` | `ForceSet` | yes |  |
| `to_be_deconstructed` | `boolean` | yes |  |
| `to_be_upgraded` | `boolean` | yes |  |
| `limit` | `uint32` | yes |  |
| `is_military_target` | `boolean` | yes |  |
| `has_item_inside` | `ItemWithQualityID` | yes |  |
| `quality` | `QualityCondition` | yes |  |
| `invert` | `boolean` | yes | Whether the filters should be inverted. |
