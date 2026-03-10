# Event: script_raised_built

A static event mods can use to tell other mods they built something by script. This event is only
raised if a mod does so with [LuaBootstrap::raise_event](runtime:LuaBootstrap::raise_event) or
[LuaBootstrap::raise_script_built](runtime:LuaBootstrap::raise_script_built), or when `raise_built`
is passed to [LuaSurface::create_entity](runtime:LuaSurface::create_entity).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that has been built. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
