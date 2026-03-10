# Event: on_gui_closed

Called when the player closes the GUI they have open.  This can only be raised when the GUI's player
controller is still valid. If a GUI is thus closed due to the player disconnecting, dying, or
becoming a spectator in other ways, it won't cause this event to be raised.  It's not advised to
open any other GUI during this event because if this is run as a request to open a different GUI the
game will force close the new opened GUI without notice to ensure the original requested GUI is
opened.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player closing the GUI. |
| `gui_type` | `defines.gui_type` | no | The type of GUI that was closed. |
| `tile_position` | `TilePosition` | yes | The position of the tile whose GUI was closed. |
| `equipment` | `LuaEquipment` | yes | The equipment whose GUI was closed. |
| `entity` | `LuaEntity` | yes | The entity or entity grid whose GUI was closed. |
| `item` | `LuaItemStack` | yes | The item whose GUI was closed. |
| `other_player` | `LuaPlayer` | yes | The other player whose GUI was closed. |
| `element` | `LuaGuiElement` | yes | The custom GUI element that was closed. |
| `surface_index` | `uint32` | yes | The surface index of the global electric network whose GUI was closed. |
| `inventory` | `LuaInventory` | yes | The script inventory whose GUI was closed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
