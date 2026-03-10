# CliffPrototype
*typename: `cliff`*
*extends: `EntityPrototype`*

A [cliff](https://wiki.factorio.com/Cliff).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `orientations` | `OrientedCliffPrototypeSet` | no |  |
| `grid_size` | `Vector` | no |  |
| `grid_offset` | `Vector` | no |  |
| `cliff_explosive` | `ItemID` | yes | Name of a capsule that has a robot_action to explode cliffs. |
| `place_as_crater` | `CraterPlacementDefinition` | yes |  |
