# Concept: ZoomLimits

A set of limitations for the player zoom level.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `closest` | `ZoomSpecification` | yes | The closest zoom level that the player's current controller can have. If not defined when overwriting [LuaPlayer::zoo... |
| `furthest` | `ZoomSpecification` | yes | The furthest zoom level that the player's current controller can have. If for any reason the `furthest` limit is clos... |
| `furthest_game_view` | `ZoomSpecification` | yes | The furthest zoom level at which the engine will render the game view. Zoom levels further than this limit will rende... |
