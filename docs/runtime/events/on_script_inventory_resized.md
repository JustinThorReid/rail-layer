# Event: on_script_inventory_resized

Called just after a script inventory is resized.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | If done by console command; the player who ran the command. |
| `mod` | `string` | no | The mod that did the resizing. This will be `"core"` if done by console command or scenario script. |
| `inventory` | `LuaInventory` | no |  |
| `old_size` | `uint32` | no | The old inventory size. |
| `new_size` | `uint32` | no | The new inventory size. |
| `overflow_inventory` | `LuaInventory` | no | Any items which didn't fit into the new inventory size. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
