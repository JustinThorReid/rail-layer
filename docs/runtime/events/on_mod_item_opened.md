# Event: on_mod_item_opened

Called when the player uses the 'Open item GUI' control on an item defined with the 'mod-openable'
flag

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player. |
| `item` | `LuaItemPrototype` | no | The item clicked on. |
| `quality` | `LuaQualityPrototype` | no | The item quality clicked on. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
