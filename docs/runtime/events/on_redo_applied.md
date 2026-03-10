# Event: on_redo_applied

Called when the player triggers "redo".

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player who triggered the redo action. |
| `actions` | `array[UndoRedoAction]` | no | The context of the redo action. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
