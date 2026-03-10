# Event: on_force_cease_fire_changed

Called when the a forces cease fire values change.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `LuaForce` | no | The force who's cease fire changed. |
| `other_force` | `LuaForce` | no | Which force was added or removed. |
| `added` | `boolean` | no | If the other force was added or removed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
