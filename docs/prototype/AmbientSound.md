# AmbientSound
*typename: `ambient-sound`*

This prototype is used to make sound while playing the game. This includes the game's
[music](https://store.steampowered.com/app/436090/Factorio__Soundtrack/), composed by Daniel James
Taylor.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'ambient-sound'` | no | Specification of the type of the prototype. |
| `name` | `string` | no | Unique textual identification of the prototype. |
| `weight` | `double` | yes | Cannot be less than zero. Cannot be defined if `track_type` is `"hero-track"`. |
| `track_type` | `AmbientSoundType` | no |  |
| `planet` | `SpaceLocationID` | yes | Track without a planet is bound to space platforms. |
| `sound` | `Sound` | yes | Static music track. One of `sound` or `variable_sound` must be defined. Both cannot be defined together. |
| `variable_sound` | `VariableAmbientSoundVariableSound` | yes | Variable music track. One of `sound` or `variable_sound` must be defined. Both cannot be defined together. |
