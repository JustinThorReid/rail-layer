# Event: on_player_setup_blueprint

Called when a player selects an area with a blueprint.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player doing the selection. |
| `surface` | `LuaSurface` | no | The surface selected. |
| `area` | `BoundingBox` | no | The area selected. |
| `item` | `string` | no | The item used to select the area. |
| `stack` | `LuaItemStack` | yes | The item stack used to select the area. |
| `record` | `LuaRecord` | yes | The record that is being reassigned. |
| `quality` | `string` | no | The item quality used to select the area. |
| `alt` | `boolean` | no | If normal selection or alt selection was used. |
| `mapping` | `LuaLazyLoadedValue` | no | The blueprint entity index to source entity mapping. Note: if any mod changes the blueprint this will be incorrect. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
