# SpiderUnitPrototype
*typename: `spider-unit`*
*extends: `EntityWithOwnerPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `spider_engine` | `SpiderEngineSpecification` | no |  |
| `height` | `float` | no | The height of the spider affects the shooting height and the drawing of the graphics and lights. |
| `torso_bob_speed` | `float` | yes | Cannot be negative. |
| `torso_rotation_speed` | `float` | yes | The orientation of the torso of the spider affects the shooting direction and the drawing of the graphics and lights. |
| `graphics_set` | `SpiderTorsoGraphicsSet` | yes |  |
| `absorptions_to_join_attack` | `dict[AirbornePollutantID, float]` | yes |  |
| `spawning_time_modifier` | `double` | yes |  |
| `radar_range` | `uint32` | yes | In chunks. The radius of how many chunks this spider unit charts around itself. |
| `attack_parameters` | `AttackParameters` | no |  |
| `dying_sound` | `Sound` | yes |  |
| `warcry` | `Sound` | yes | A sound the spider unit makes when it sets out to attack. |
| `vision_distance` | `double` | no | Must be less than or equal to 100. |
| `distraction_cooldown` | `uint32` | no |  |
| `min_pursue_time` | `uint32` | yes |  |
| `max_pursue_distance` | `double` | yes |  |
| `ai_settings` | `UnitAISettings` | yes |  |
