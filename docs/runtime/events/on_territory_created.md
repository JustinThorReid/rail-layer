# Event: on_territory_created

Called when a territory is created for any reason.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `cause` | `defines.territory_created_cause` | no | The reason the territory was created. |
| `territory` | `LuaTerritory` | no | The territory that was created. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
