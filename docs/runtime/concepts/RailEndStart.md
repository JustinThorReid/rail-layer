# Concept: RailEndStart

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `rail` | `LuaEntity` | no |  |
| `direction` | `defines.rail_direction` | no |  |
| `allow_path_within_segment` | `boolean` | yes | Defaults to `true`. Providing false will cause the pathfinder to reject a path that starts here and ends in the same ... |
| `is_front` | `boolean` | yes | Defaults to `false`. |
| `priority` | `uint8` | yes | Start priority. Defaults to `50`. |
