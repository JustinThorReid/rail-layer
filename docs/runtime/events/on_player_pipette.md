# Event: on_player_pipette

Called when a player invokes the "smart pipette" over an entity.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player |
| `item` | `LuaItemPrototype` | no | The item put in the cursor |
| `quality` | `LuaQualityPrototype` | no | The item quality put in the cursor |
| `used_cheat_mode` | `boolean` | no | If cheat mode was used to give a free stack of the item. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
