# UnitPrototype
*typename: `unit`*
*extends: `EntityWithOwnerPrototype`*

Entity that moves around and attacks players, for example [biters and
spitters](https://wiki.factorio.com/Enemies#Creatures).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `run_animation` | `RotatedAnimation` | no |  |
| `attack_parameters` | `AttackParameters` | no | Requires animation in attack_parameters. Requires ammo_type in attack_parameters. |
| `warcry` | `Sound` | yes | A sound the unit makes when it sets out to attack. |
| `movement_speed` | `float` | no | Movement speed of the unit in the world, in tiles per tick. Must be equal to or greater than 0. |
| `distance_per_frame` | `float` | no | How fast the `run_animation` frames are advanced. The animations are advanced animation_speed frames per `distance_pe... |
| `distraction_cooldown` | `uint32` | no |  |
| `vision_distance` | `double` | no | Max is 100. Note: Setting to 50 or above can lead to undocumented behavior of individual units creating groups on the... |
| `rotation_speed` | `float` | yes |  |
| `dying_sound` | `Sound` | yes | The sound file to play when entity dies. |
| `min_pursue_time` | `uint32` | yes | In ticks. |
| `has_belt_immunity` | `boolean` | yes | If the unit is immune to movement by belts. |
| `max_pursue_distance` | `double` | yes |  |
| `radar_range` | `uint32` | yes | In chunks. The radius of how many chunks this unit charts around itself. |
| `ai_settings` | `UnitAISettings` | yes |  |
| `move_while_shooting` | `boolean` | yes |  |
| `can_open_gates` | `boolean` | yes |  |
| `affected_by_tiles` | `boolean` | yes |  |
| `render_layer` | `RenderLayer` | yes |  |
| `light` | `LightDefinition` | yes |  |
| `absorptions_to_join_attack` | `dict[AirbornePollutantID, float]` | yes |  |
| `spawning_time_modifier` | `double` | yes |  |
| `walking_sound` | `Sound` | yes |  |
| `alternative_attacking_frame_sequence` | `UnitAlternativeFrameSequence` | yes |  |
| `running_sound_animation_positions` | `array[float]` | yes | Only loaded if `walking_sound` is defined. |
| `is_military_target` | `True` | yes | Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https:/... |
| `allow_run_time_change_of_is_military_target` | `False` | yes | If this is true, this entities `is_military_target property` can be changed runtime (on the entity, not on the protot... |
