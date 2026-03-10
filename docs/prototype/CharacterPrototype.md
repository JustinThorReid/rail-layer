# CharacterPrototype
*typename: `character`*
*extends: `EntityWithOwnerPrototype`*

Entity that you move around on the screen during the campaign and freeplay.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `crafting_speed` | `double` | yes |  |
| `mining_speed` | `double` | no |  |
| `running_speed` | `double` | no |  |
| `distance_per_frame` | `double` | no |  |
| `maximum_corner_sliding_distance` | `double` | no |  |
| `heartbeat` | `Sound` | yes | The sound played when the character's health is low. |
| `inventory_size` | `ItemStackIndex` | no | Number of slots in the main inventory. May be 0. |
| `guns_inventory_size` | `ItemStackIndex` | yes | Must be between 1 and 15. |
| `build_distance` | `uint32` | no |  |
| `drop_item_distance` | `uint32` | no |  |
| `reach_distance` | `uint32` | no |  |
| `reach_resource_distance` | `double` | no |  |
| `item_pickup_distance` | `double` | no |  |
| `loot_pickup_distance` | `double` | no |  |
| `ticks_to_keep_gun` | `uint32` | no |  |
| `ticks_to_keep_aiming_direction` | `uint32` | no |  |
| `ticks_to_stay_in_combat` | `uint32` | no |  |
| `damage_hit_tint` | `Color` | no |  |
| `mining_with_tool_particles_animation_positions` | `array[float]` | no | List of positions in the mining with tool animation when the mining sound and mining particles are created. |
| `running_sound_animation_positions` | `array[float]` | no | List of positions in the running animation when the walking sound is played. |
| `moving_sound_animation_positions` | `array[float]` | no |  |
| `animations` | `array[CharacterArmorAnimation]` | no |  |
| `crafting_categories` | `array[RecipeCategoryID]` | yes | Names of the crafting categories the character can craft recipes from. The built-in categories can be found [here](ht... |
| `mining_categories` | `array[ResourceCategoryID]` | yes | Names of the resource categories the character can mine resources from. |
| `light` | `LightDefinition` | yes |  |
| `flying_bob_speed` | `float` | yes |  |
| `grounded_landing_search_radius` | `double` | yes | The search radius for a non-colliding position to move the player to if they are grounded mid-flight. Must be >= 0. |
| `enter_vehicle_distance` | `double` | yes | Must be >= 0. |
| `tool_attack_distance` | `double` | yes |  |
| `respawn_time` | `uint32` | yes | Time in seconds. Must be positive |
| `has_belt_immunity` | `boolean` | yes | Whether this character is moved by belts when standing on them. |
| `character_corpse` | `EntityID` | yes | Name of the character corpse that is spawned when this character dies. |
| `flying_collision_mask` | `CollisionMaskConnector` | yes | This collision mask is used when the character is flying. Defaults to the mask from [UtilityConstants::default_collis... |
| `tool_attack_result` | `Trigger` | yes |  |
| `footstep_particle_triggers` | `FootstepTriggerEffectList` | yes | Triggered every tick of the running animation. |
| `synced_footstep_particle_triggers` | `FootstepTriggerEffectList` | yes | Triggered when the running animation (`animations`) rolls over the frames defined in `right_footprint_frames` and `le... |
| `footprint_particles` | `array[FootprintParticle]` | yes | Triggered when the running animation (`animations`) rolls over the frames defined in `right_footprint_frames` and `le... |
| `left_footprint_offset` | `Vector` | yes | Offset from the center of the entity for the left footprint. Used by `footprint_particles`. |
| `right_footprint_offset` | `Vector` | yes | Offset from the center of the entity for the right footprint. Used by `footprint_particles`. |
| `right_footprint_frames` | `array[float]` | yes | The frames in the running animation (`animations`) where the right foot touches the ground. |
| `left_footprint_frames` | `array[float]` | yes | The frames in the running animation (`animations`) where the left foot touches the ground. |
| `is_military_target` | `boolean` | yes | Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https:/... |
