# Event: on_player_removed_equipment

Called after the player removes equipment from an equipment grid

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `grid` | `LuaEquipmentGrid` | no | The equipment grid removed from. |
| `equipment` | `string` | no | The equipment removed. |
| `quality` | `string` | no | The equipment quality. |
| `count` | `uint32` | no | The count of equipment removed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
