# Event: on_forces_merged

Called after two forces have been merged using `game.merge_forces()`.  The source force is
invalidated before this event is called and the name can be re-used in this event if desired.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source_name` | `string` | no | The force destroyed. |
| `source_index` | `uint32` | no | The index of the destroyed force. |
| `destination` | `LuaForce` | no | The force entities where reassigned to. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
