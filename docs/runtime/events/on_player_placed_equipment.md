# Event: on_player_placed_equipment

Called after the player puts equipment in an equipment grid

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `equipment` | `LuaEquipment` | no | The equipment put in the equipment grid. |
| `grid` | `LuaEquipmentGrid` | no | The equipment grid the equipment was put in. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
