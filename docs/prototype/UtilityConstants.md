# UtilityConstants
*typename: `utility-constants`*
*extends: `PrototypeBase`*

Constants used by the game that are not specific to certain prototypes. See [utility-
constants.lua](https://github.com/wube/factorio-data/blob/master/core/prototypes/utility-
constants.lua) for the values used by the base game.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity_button_background_color` | `Color` | no |  |
| `building_buildable_too_far_tint` | `Color` | no |  |
| `building_buildable_tint` | `Color` | no |  |
| `building_not_buildable_tint` | `Color` | no |  |
| `building_ignorable_tint` | `Color` | no |  |
| `building_no_tint` | `Color` | no |  |
| `underground_belt_max_distance_tint` | `Color` | no |  |
| `underground_pipe_max_distance_tint` | `Color` | no |  |
| `ghost_shader_tint` | `GhostTintSet` | no |  |
| `ghost_shaderless_tint` | `GhostTintSet` | no |  |
| `ghost_shimmer_settings` | `GhostShimmerConfig` | no |  |
| `probability_product_count_tint` | `Color` | no |  |
| `zero_count_value_tint` | `Color` | no |  |
| `equipment_default_background_color` | `Color` | no |  |
| `equipment_default_background_border_color` | `Color` | no |  |
| `equipment_default_grabbed_background_color` | `Color` | no |  |
| `turret_range_visualization_color` | `Color` | no |  |
| `capsule_range_visualization_color` | `Color` | no |  |
| `agricultural_range_visualization_color` | `Color` | no |  |
| `artillery_range_visualization_color` | `Color` | no |  |
| `chart` | `ChartUtilityConstants` | no | Chart means map and minimap. |
| `gui_remark_color` | `Color` | no |  |
| `gui_search_match_foreground_color` | `Color` | no |  |
| `gui_search_match_background_color` | `Color` | no |  |
| `default_player_force_color` | `Color` | no |  |
| `default_enemy_force_color` | `Color` | no |  |
| `default_other_force_color` | `Color` | no |  |
| `deconstruct_mark_tint` | `Color` | no |  |
| `rail_planner_count_button_color` | `Color` | no |  |
| `count_button_size` | `int32` | no |  |
| `logistic_gui_unselected_network_highlight_tint` | `Color` | no |  |
| `logistic_gui_selected_network_highlight_tint` | `Color` | no |  |
| `chart_search_highlight` | `Color` | no |  |
| `selected_chart_search_highlight` | `Color` | no |  |
| `zoom_to_world_can_use_nightvision` | `boolean` | no |  |
| `zoom_to_world_effect_strength` | `float` | no |  |
| `max_logistic_filter_count` | `LogisticFilterIndex` | no |  |
| `max_terrain_building_size` | `uint8` | no |  |
| `small_area_size` | `float` | no |  |
| `medium_area_size` | `float` | no |  |
| `large_area_size` | `float` | no |  |
| `huge_platform_animation_sound_area` | `float` | no |  |
| `small_blueprint_area_size` | `float` | no |  |
| `medium_blueprint_area_size` | `float` | no |  |
| `large_blueprint_area_size` | `float` | no |  |
| `enabled_recipe_slot_tint` | `Color` | no |  |
| `disabled_recipe_slot_tint` | `Color` | no |  |
| `disabled_recipe_slot_background_tint` | `Color` | no |  |
| `forced_enabled_recipe_slot_background_tint` | `Color` | no |  |
| `rail_segment_colors` | `array[Color]` | no |  |
| `player_colors` | `array[PlayerColorData]` | no | The table with `name = "default"` must exist and be the first member of the array. |
| `server_command_console_chat_color` | `Color` | no |  |
| `script_command_console_chat_color` | `Color` | no |  |
| `default_alert_icon_scale` | `float` | no |  |
| `default_alert_icon_shift_by_type` | `dict[string, Vector]` | yes |  |
| `default_alert_icon_scale_by_type` | `dict[string, float]` | yes |  |
| `bonus_gui_ordering` | `BonusGuiOrdering` | no | The base game uses more entries here that are applied via the ammo-category.lua file. |
| `merge_bonus_gui_production_bonuses` | `boolean` | yes | If not set, defaults to 'true' when modded and 'false' when vanilla. |
| `daytime_color_lookup` | `DaytimeColorLookupTable` | no |  |
| `zoom_to_world_daytime_color_lookup` | `DaytimeColorLookupTable` | no |  |
| `frozen_color_lookup` | `ColorLookupTable` | no |  |
| `map_editor` | `MapEditorConstants` | no |  |
| `drop_item_radius` | `float` | no |  |
| `checkerboard_white` | `Color` | no |  |
| `checkerboard_black` | `Color` | no |  |
| `item_outline_color` | `Color` | no |  |
| `item_outline_radius` | `float` | no |  |
| `item_outline_inset` | `float` | no |  |
| `item_outline_sharpness` | `float` | no |  |
| `item_default_random_tint_strength` | `Color` | no |  |
| `spawner_evolution_factor_health_modifier` | `float` | no |  |
| `item_health_bar_colors` | `array[ItemHealthColorData]` | no | There must be one array item with a threshold of `0`. |
| `item_ammo_magazine_left_bar_color` | `Color` | no |  |
| `item_tool_durability_bar_color` | `Color` | no |  |
| `filter_outline_color` | `Color` | no |  |
| `icon_shadow_radius` | `float` | no |  |
| `icon_shadow_inset` | `float` | no |  |
| `icon_shadow_sharpness` | `float` | no |  |
| `icon_shadow_color` | `Color` | no |  |
| `clipboard_history_size` | `uint32` | no |  |
| `recipe_step_limit` | `uint32` | no |  |
| `manual_rail_building_reach_modifier` | `double` | no |  |
| `train_temporary_stop_wait_time` | `uint32` | no |  |
| `train_time_wait_condition_default` | `uint32` | no |  |
| `train_inactivity_wait_condition_default` | `uint32` | no |  |
| `default_trigger_target_mask_by_type` | `dict[string, TriggerTargetMask]` | yes | The strings are entity types. |
| `unit_group_pathfind_resolution` | `int8` | no |  |
| `unit_group_max_pursue_distance` | `double` | no |  |
| `dynamic_recipe_overload_factor` | `double` | no |  |
| `minimum_recipe_overload_multiplier` | `uint32` | no |  |
| `maximum_recipe_overload_multiplier` | `uint32` | no |  |
| `entity_renderer_search_box_limits` | `EntityRendererSearchBoxLimits` | no |  |
| `light_renderer_search_distance_limit` | `uint8` | no | Can be set to anything from range 0 to 255, but larger values will be clamped to 160. Setting it to larger values can... |
| `tree_leaf_distortion_strength_far` | `Vector` | no |  |
| `tree_leaf_distortion_distortion_far` | `Vector` | no |  |
| `tree_leaf_distortion_speed_far` | `Vector` | no |  |
| `tree_leaf_distortion_strength_near` | `Vector` | no |  |
| `tree_leaf_distortion_distortion_near` | `Vector` | no |  |
| `tree_leaf_distortion_speed_near` | `Vector` | no |  |
| `tree_shadow_roughness` | `float` | no |  |
| `tree_shadow_speed` | `float` | no |  |
| `missing_preview_sprite_location` | `FileName` | no |  |
| `main_menu_background_image_location` | `FileName` | no |  |
| `main_menu_simulations` | `dict[string, SimulationDefinition]` | yes | The strings represent the names of the simulations. |
| `main_menu_background_vignette_intensity` | `float` | no |  |
| `main_menu_background_vignette_sharpness` | `float` | no |  |
| `feedback_screenshot_subfolder_name` | `string` | no |  |
| `feedback_screenshot_file_name` | `string` | no |  |
| `default_scorch_mark_color` | `Color` | no |  |
| `color_filters` | `array[ColorFilterData]` | yes |  |
| `minimap_slot_hovered_tint` | `Color` | no |  |
| `minimap_slot_clicked_tint` | `Color` | no |  |
| `clear_cursor_volume_modifier` | `float` | no |  |
| `weapons_in_simulation_volume_modifier` | `float` | no |  |
| `explosions_in_simulation_volume_modifier` | `float` | no |  |
| `enemies_in_simulation_volume_modifier` | `float` | no |  |
| `low_energy_robot_estimate_multiplier` | `double` | no |  |
| `asteroid_spawning_offset` | `SimpleBoundingBox` | no |  |
| `asteroid_fading_range` | `float` | no |  |
| `asteroid_spawning_with_random_orientation_max_speed` | `double` | no |  |
| `asteroid_position_offset_to_speed_coefficient` | `double` | no |  |
| `asteroid_collector_navmesh_refresh_tick_interval` | `uint32` | no |  |
| `asteroid_collector_blockage_update_tile_distance` | `uint32` | no |  |
| `asteroid_collector_max_nurbs_control_point_separation` | `double` | no |  |
| `asteroid_collector_static_head_swing_strength_scale` | `float` | no |  |
| `asteroid_collector_static_head_swing_segment_count` | `uint32` | no |  |
| `space_platform_acceleration_expression` | `MathExpression` | no | Variables: speed, thrust, weight, width, height |
| `space_platform_relative_speed_factor` | `double` | no |  |
| `space_platform_starfield_movement_vector` | `Vector` | no |  |
| `space_platform_max_size` | `SimpleBoundingBox` | no |  |
| `space_platform_dump_cooldown` | `uint32` | no | Determines how fast space platforms will send items in drop slots to the surface. Each item type has its own cooldown. |
| `space_platform_manual_dump_cooldown` | `uint32` | no | Delay after manual transfer until space platform sends items in drop slots to the surface. Overrides remaining space_... |
| `space_platform_max_relative_speed_deviation_for_asteroid_chunks_update` | `float` | no | Space platform remembers relative speed range which asteroids use while it moves. When the range is larger than the s... |
| `space_platform_asteroid_chunk_trajectory_updates_per_tick` | `uint32` | no | How many asteroid chunks should be processed per tick, see [space_platform_max_relative_speed_deviation_for_asteroid_... |
| `default_item_weight` | `Weight` | no |  |
| `rocket_lift_weight` | `Weight` | no |  |
| `factoriopedia_recycling_recipe_categories` | `array[RecipeCategoryID]` | no |  |
| `max_fluid_flow` | `FluidAmount` | no |  |
| `default_pipeline_extent` | `double` | no | The default value of [FluidBox::max_pipeline_extent](prototype:FluidBox::max_pipeline_extent). |
| `default_platform_procession_set` | `ProcessionSet` | no | Must contain arrival and departure with [procession_style](prototype:ProcessionPrototype::procession_style) containin... |
| `default_planet_procession_set` | `ProcessionSet` | no | Must contain arrival and departure with [procession_style](prototype:ProcessionPrototype::procession_style) containin... |
| `landing_area_clear_zone_radius` | `float` | no | Radius of area where cargo pods won't land. |
| `landing_area_max_radius` | `float` | no | Max radius where cargo pods will land. |
| `lightning_attractor_collection_range_color` | `Color` | no |  |
| `lightning_attractor_protection_range_color` | `Color` | no |  |
| `landing_squash_immunity` | `MapTick` | no |  |
| `ejected_item_lifetime` | `MapTick` | no | Silently clamped to be between 1 tick and 5 minutes (`5 * 60 * 60` ticks). |
| `ejected_item_speed` | `double` | no | Silently clamped to be between 0 and 1/60. |
| `ejected_item_direction_variation` | `double` | no | Silently clamped to be between 0 and 0.99. |
| `ejected_item_friction` | `double` | no | Silently clamped to be between 0 and 1. |
| `train_visualization` | `TrainVisualizationConstants` | no |  |
| `default_collision_masks` | `dict[string, CollisionMaskConnector]` | no | The strings can be entity types or custom strings. |
| `show_chunk_components_collision_mask` | `CollisionMaskConnector` | no |  |
| `building_collision_mask` | `CollisionMaskConnector` | no |  |
| `water_collision_mask` | `CollisionMaskConnector` | no |  |
| `ghost_layer` | `CollisionLayerID` | no |  |
| `train_pushed_by_player_max_speed` | `double` | no |  |
| `train_pushed_by_player_max_acceleration` | `double` | no |  |
| `train_pushed_by_player_ignores_friction` | `boolean` | no |  |
| `freezing_temperature` | `double` | no |  |
| `train_on_elevated_rail_shadow_shift_multiplier` | `Vector` | no |  |
| `max_belt_stack_size` | `uint8` | no | Must be >= 1. |
| `inserter_hand_stack_items_per_sprite` | `ItemCountType` | no | Must be >= 1. |
| `inserter_hand_stack_max_sprites` | `ItemCountType` | no | Must be >= 1. |
| `remote_view_LPF_min_cutoff_frequency` | `float` | no |  |
| `remote_view_LPF_max_cutoff_frequency` | `float` | no |  |
| `space_LPF_min_cutoff_frequency` | `float` | no |  |
| `space_LPF_max_cutoff_frequency` | `float` | no |  |
| `walking_sound_count_reduction_rate` | `float` | no | Silently clamped to be between 0 and 1. |
| `moving_sound_count_reduction_rate` | `float` | no | Silently clamped to be between 0 and 1. |
| `environment_sounds_transition_fade_in_ticks` | `uint32` | no |  |
| `starmap_orbit_default_color` | `Color` | no |  |
| `starmap_orbit_hovered_color` | `Color` | no |  |
| `starmap_orbit_clicked_color` | `Color` | no |  |
| `starmap_orbit_disabled_color` | `Color` | no |  |
| `time_to_show_full_health_bar` | `MapTick` | no | The number of ticks to show a segmented unit's health bar after fully regenerating. |
| `capture_water_mask_at_layer` | `uint8` | no | Layer within `ground-natural` [tile render layer](prototype:TileRenderLayer) group, before which terrain lightmap alp... |
| `logistic_robots_use_busy_robots_queue` | `boolean` | no |  |
| `construction_robots_use_busy_robots_queue` | `boolean` | no |  |
| `quality_selector_dropdown_threshold` | `uint8` | no |  |
| `maximum_quality_jump` | `uint8` | no | Cap for how many steps of quality the output of something (miner/crafter) may be higher than the input (resource/ingr... |
| `select_group_row_count` | `uint8` | no | Will be clamped to the range [1, 100]. |
| `select_slot_row_count` | `uint8` | no | Will be clamped to the range [1, 100]. |
| `crafting_queue_slots_per_row` | `uint8` | no | Will be clamped to the range [1, 100]. |
| `logistic_slots_per_row` | `uint8` | no | Will be clamped to the range [2, 100]. |
| `blueprint_big_slots_per_row` | `uint8` | no | Will be clamped to the range [2, 100]. |
| `blueprint_small_slots_per_row` | `uint8` | no | Will be clamped to the range [2, 100]. |
| `inventory_width` | `uint8` | no | Will be clamped to the range [1, 100]. |
| `module_inventory_width` | `uint8` | no | Will be clamped to the range [1, 100]. |
| `trash_inventory_width` | `uint8` | no | Will be clamped to the range [1, 100]. |
| `tooltip_monitor_edge_border` | `int32` | no | Must be >= 1. |
| `flying_text_ttl` | `uint32` | no | Must be >= 1. |
| `train_path_finding` | `TrainPathFinderConstants` | no |  |
