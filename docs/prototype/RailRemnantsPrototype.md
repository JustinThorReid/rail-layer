# RailRemnantsPrototype
*typename: `rail-remnants`*
*extends: `CorpsePrototype`*

Used for rail corpses.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `pictures` | `RailPictureSet` | no |  |
| `related_rail` | `EntityID` | no |  |
| `secondary_collision_box` | `BoundingBox` | yes |  |
| `build_grid_size` | `2` | yes | Has to be 2 for 2x2 grid. |
| `collision_box` | `BoundingBox` | yes | "Rail remnant entities must have a non-zero [collision_box](prototype:EntityPrototype::collision_box) defined. |
