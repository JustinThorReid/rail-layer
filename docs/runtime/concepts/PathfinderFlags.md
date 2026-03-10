# Concept: PathfinderFlags

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `allow_destroy_friendly_entities` | `boolean` | yes | Allows pathing through friendly entities. Defaults to `false`. |
| `allow_paths_through_own_entities` | `boolean` | yes | Allows the pathfinder to path through entities of the same force. Defaults to `false`. |
| `cache` | `boolean` | yes | Enables path caching. This can be more efficient, but might fail to respond to changes in the environment. Defaults t... |
| `prefer_straight_paths` | `boolean` | yes | Makes the pathfinder try to path in straight lines. Defaults to `false`. |
| `low_priority` | `boolean` | yes | Sets lower priority on the path request, meaning it might take longer to find a path at the expense of speeding up ot... |
| `no_break` | `boolean` | yes | Makes the pathfinder not break in the middle of processing this pathfind, no matter how much work is needed. Defaults... |
