# Event: on_marked_for_deconstruction

Called when an entity is marked for deconstruction with the Deconstruction planner or via script.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no |  |
| `player_index` | `uint32` | yes |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
