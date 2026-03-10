# Event: script_raised_revive

A static event mods can use to tell other mods they revived something by script. This event is only
raised if a mod does so with [LuaBootstrap::raise_event](runtime:LuaBootstrap::raise_event) or
[LuaBootstrap::raise_script_revive](runtime:LuaBootstrap::raise_script_revive), or when
`raise_revive` is passed to [LuaEntity::revive](runtime:LuaEntity::revive).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that was revived. |
| `tags` | `Tags` | yes | The tags associated with this entity, if any. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
