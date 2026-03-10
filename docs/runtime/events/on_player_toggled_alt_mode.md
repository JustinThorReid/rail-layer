# Event: on_player_toggled_alt_mode

Called when a player toggles alt mode, also known as "show entity info".

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no |  |
| `alt_mode` | `boolean` | no | The new alt mode value. This value is a shortcut for accessing [GameViewSettings::show_entity_info](runtime:GameViewS... |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
