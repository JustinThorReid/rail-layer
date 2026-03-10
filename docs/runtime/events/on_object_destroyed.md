# Event: on_object_destroyed

Called after an object is destroyed which was registered with
[LuaBootstrap::register_on_object_destroyed](runtime:LuaBootstrap::register_on_object_destroyed)
previously.  Depending on when a given object is destroyed, this event will be fired at the end of
the current tick or at the end of the next tick. The event's timing is independent of the in-world
object being destroyed.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `registration_number` | `uint64` | no | The number returned by [register_on_object_destroyed](runtime:LuaBootstrap::register_on_object_destroyed) to uniquely... |
| `useful_id` | `uint64` | no | The [useful identifier](runtime:RegistrationTarget) of the object. Same as second value returned by [LuaBootstrap::re... |
| `type` | `defines.target_type` | no | Type of the object that was destroyed. Same as third value returned by [LuaBootstrap::register_on_object_destroyed](r... |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
