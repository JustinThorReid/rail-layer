# Concept: PathfinderWaypoint

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | The position of the waypoint on its surface. |
| `needs_destroy_to_reach` | `boolean` | no | `true` if the path from the previous waypoint to this one goes through an entity that must be destroyed. |
