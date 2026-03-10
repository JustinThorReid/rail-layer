# Concept: CollisionMask

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `layers` | `dict[string, True]` | no | Every key in the dictionary is the name of one [layer](runtime:LuaCollisionLayerPrototype) the object collides with. ... |
| `not_colliding_with_itself` | `boolean` | yes | Any two entities that both have this option enabled on their prototype and have an identical collision mask layers li... |
| `consider_tile_transitions` | `boolean` | yes | Uses the prototypes position rather than its collision box when doing collision checks with tile prototypes. Allows t... |
| `colliding_with_tiles_only` | `boolean` | yes | Any prototype with this collision option will only be checked for collision with other prototype's collision masks if... |
