# RailPrototype
*extends: `EntityWithOwnerPrototype`*

The abstract base of all rail prototypes.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `walking_sound` | `Sound` | yes | Sound played when a character walks over this rail. |
| `pictures` | `RailPictureSet` | no |  |
| `fence_pictures` | `RailFenceGraphicsSet` | yes |  |
| `extra_planner_penalty` | `double` | yes |  |
| `extra_planner_goal_penalty` | `double` | yes |  |
| `forced_fence_segment_count` | `uint8` | yes | Must be 0, 2 or 4. Can't be non-zero if `fence_pictures` is defined. |
| `ending_shifts` | `array[Vector]` | yes |  |
| `deconstruction_marker_positions` | `array[Vector]` | yes |  |
| `removes_soft_decoratives` | `boolean` | yes |  |
| `build_grid_size` | `2` | yes | Has to be 2 for 2x2 grid. |
| `selection_box` | `BoundingBox` | yes | The rail [selection_boxes](prototype:EntityPrototype::selection_box) are automatically calculated from the collision ... |
