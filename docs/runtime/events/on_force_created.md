# Event: on_force_created

Called when a new force is created using `game.create_force()`  This is not called when the default
forces (`'player'`, `'enemy'`, `'neutral'`) are created as they will always exist.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `LuaForce` | no | The newly created force. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
