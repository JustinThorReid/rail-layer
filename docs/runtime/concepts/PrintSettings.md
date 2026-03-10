# Concept: PrintSettings

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `color` | `Color` | yes | Color of the message to print. Defaults to white. |
| `sound` | `defines.print_sound` | yes | If a sound should be emitted for this message. Defaults to `defines.print_sound.use_player_settings`. |
| `skip` | `defines.print_skip` | yes | Condition when to skip adding message. Defaults to `defines.print_skip.if_redundant`. |
| `sound_path` | `SoundPath` | yes | The sound to play. If not given, [UtilitySounds::console_message](prototype:UtilitySounds::console_message) will be u... |
| `volume_modifier` | `float` | yes | The volume of the sound to play. Must be between 0 and 1 inclusive. Defaults to 1. |
| `game_state` | `boolean` | yes | If set to false, message will not be part of game state and will disappear from output console after save-load. Defau... |
