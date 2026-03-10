# Concept: TileBuildabilityRule

A runtime representation of [TileBuildabilityRule](prototype:TileBuildabilityRule).

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `area` | `BoundingBox` | no | The area that this rule applies to. |
| `colliding_tiles` | `CollisionMask` | no | The tiles that this rule collides with. |
| `required_tiles` | `CollisionMask` | no | The tiles that this rule requires to be present. |
| `remove_on_collision` | `boolean` | no | If the entity should be removed upon collision. |
