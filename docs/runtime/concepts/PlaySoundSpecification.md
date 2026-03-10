# Concept: PlaySoundSpecification

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `path` | `SoundPath` | no | The sound to play. |
| `position` | `MapPosition` | yes | Where the sound should be played. If not given, it's played globally on the player's controller's surface. |
| `volume_modifier` | `double` | yes | The volume of the sound to play. Must be between 0 and 1 inclusive. |
| `override_sound_type` | `SoundType` | yes | The volume mixer to play the sound through. Defaults to the default mixer for the given sound type. |
