# Event: script_raised_destroy

A static event mods can use to tell other mods they destroyed something by script. This event is
only raised if a mod does so with [LuaBootstrap::raise_event](runtime:LuaBootstrap::raise_event) or
[LuaBootstrap::raise_script_destroy](runtime:LuaBootstrap::raise_script_destroy), or when
`raise_destroy` is passed to [LuaEntity::destroy](runtime:LuaEntity::destroy).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that was destroyed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
