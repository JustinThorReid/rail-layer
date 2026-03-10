# Event: on_forces_merging

Called when two forces are about to be merged using `game.merge_forces()`.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source` | `LuaForce` | no | The force to be destroyed |
| `destination` | `LuaForce` | no | The force to reassign entities to. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
