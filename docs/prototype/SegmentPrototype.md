# SegmentPrototype
*typename: `segment`*
*extends: `EntityWithOwnerPrototype`*

Entity representing an individual segment in a
[SegmentedUnitPrototype](prototype:SegmentedUnitPrototype)

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `dying_sound` | `Sound` | yes | The sound to play when the entity dies. If not specified, [UtilitySounds::segment_dying_sound](prototype:UtilitySound... |
| `dying_sound_volume_modifier` | `float` | yes |  |
| `animation` | `RotatedAnimation` | no | The animation to use of the entity. |
| `render_layer` | `RenderLayer` | yes | The layer to render the entity in. |
| `forward_overlap` | `uint8` | yes | The number of segments ahead of this one that should always be rendered atop this one, giving the illusion that at al... |
| `backward_overlap` | `uint8` | yes | The number of segments behind this one that should always be rendered atop this one, giving the illusion that at all ... |
| `forward_padding` | `double` | yes | The number of tiles of spacing to add in front of this segment. Can be negative. Scales with the segment scale when u... |
| `backward_padding` | `double` | yes | The number of tiles of spacing to add behind this segment. Can be negative. Scales with the segment scale when used i... |
| `update_effects` | `array[TriggerEffectWithCooldown]` | yes | The effects to trigger every tick. |
| `update_effects_while_enraged` | `array[TriggerEffectWithCooldown]` | yes | The effects to trigger every tick while enraged, in addition to `update_effects`. |
