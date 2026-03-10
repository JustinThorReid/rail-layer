# Event: on_territory_destroyed

Called when a territory is destroyed from a surface.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `territory` | `LuaTerritory` | no | The territory that will be destroyed. This object will be valid so that you can still read and modify its properties ... |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
