# Event: script_raised_teleported

A static event mods can use to tell other mods they teleported something by script. This event is
only raised if a mod does so with [LuaBootstrap::raise_event](runtime:LuaBootstrap::raise_event) or
[LuaBootstrap::raise_script_teleported](runtime:LuaBootstrap::raise_script_teleported), or when
`raise_teleported` is passed to [LuaControl::teleport](runtime:LuaControl::teleport).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that was teleported. |
| `old_surface_index` | `uint8` | no | The entity's surface before the teleportation. |
| `old_position` | `MapPosition` | no | The entity's position before the teleportation. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
