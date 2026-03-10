# Event: on_undo_applied

Called when the player triggers "undo".

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player who triggered the undo action. |
| `actions` | `array[UndoRedoAction]` | no | The context of the undo action. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
