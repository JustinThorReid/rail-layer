# Event: on_pre_build

Called when players uses an item to build something. Called before
[on_built_entity](runtime:on_built_entity).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player who did the placing. |
| `position` | `MapPosition` | no | Where the item was placed. |
| `build_mode` | `defines.build_mode` | no | Build mode the item was placed with. |
| `direction` | `defines.direction` | no | The direction the item was facing when placed. |
| `mirror` | `boolean` | no | If the item is mirrored (only crafting machines support this) |
| `flip_horizontal` | `boolean` | no | Whether the blueprint was flipped horizontally. `nil` if not built by a blueprint. |
| `flip_vertical` | `boolean` | no | Whether the blueprint was flipped vertically. `nil` if not built by a blueprint. |
| `created_by_moving` | `boolean` | no | Whether the item was placed while moving. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
