# Event: on_player_built_tile

Called after a player builds tiles.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `surface_index` | `uint32` | no | The surface the tile(s) were built on. |
| `tiles` | `array[OldTileAndPosition]` | no | The position data. |
| `tile` | `LuaTilePrototype` | no | The tile prototype that was placed. |
| `item` | `LuaItemPrototype` | yes | The item type used to build the tiles |
| `quality` | `LuaQualityPrototype` | yes | The quality of the item used to build the tiles |
| `inventory` | `LuaInventory` | yes | The inventory containing the items used to build the tiles. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
