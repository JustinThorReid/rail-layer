# Event: on_robot_built_tile

Called after a robot builds tiles.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `robot` | `LuaEntity` | no | The robot. |
| `tiles` | `array[OldTileAndPosition]` | no | The position data. |
| `tile` | `LuaTilePrototype` | no | The tile prototype that was placed. |
| `item` | `LuaItemPrototype` | no | The item type used to build the tiles. |
| `quality` | `LuaQualityPrototype` | no | The quality the item used to build the tiles. |
| `inventory` | `LuaInventory` | no | The inventory containing the stacks used to build the tiles. |
| `surface_index` | `uint32` | no | The surface the tile(s) are build on. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
