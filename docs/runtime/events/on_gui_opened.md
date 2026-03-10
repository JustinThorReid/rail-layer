# Event: on_gui_opened

Called when the player opens a GUI.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player closing the GUI. |
| `gui_type` | `defines.gui_type` | no | The type of GUI that was opened. |
| `tile_position` | `TilePosition` | yes | The position of the tile whose GUI was opened. |
| `equipment` | `LuaEquipment` | yes | The equipment whose GUI was opened. |
| `entity` | `LuaEntity` | yes | The entity or entity grid whose GUI was opened. |
| `item` | `LuaItemStack` | yes | The item whose GUI was opened. |
| `other_player` | `LuaPlayer` | yes | The other player whose GUI was opened. |
| `element` | `LuaGuiElement` | yes | The custom GUI element that was opened. |
| `surface_index` | `uint32` | yes | The surface index of the global electric network whose GUI was opened. |
| `inventory` | `LuaInventory` | yes | The script inventory whose GUI was opened. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
