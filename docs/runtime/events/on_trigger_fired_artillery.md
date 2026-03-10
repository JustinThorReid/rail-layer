# Event: on_trigger_fired_artillery

Called when an entity with a trigger prototype (such as capsules) fire an artillery projectile AND
that trigger prototype defined `trigger_fired_artillery=true`.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no |  |
| `source` | `LuaEntity` | yes |  |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
