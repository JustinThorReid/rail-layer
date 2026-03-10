# EntityPrototype
*extends: `Prototype`*

Abstract base of all entities in the game. Entity is nearly everything that can be on the map
(except tiles).  For in game script access to entity, take a look at [LuaEntity](runtime:LuaEntity).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `icons` | `array[IconData]` | yes | This will be used in the electric network statistics, editor building selection, and the bonus gui. Can't be an empty... |
| `icon` | `FileName` | yes | Path to the icon file. Either this or `icons` is mandatory for entities that have at least one of these flags active:... |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
| `collision_box` | `BoundingBox` | yes | Specification of the entity collision boundaries. Empty collision box means no collision and is used for smoke, proje... |
| `collision_mask` | `CollisionMaskConnector` | yes | Defaults to the mask from [UtilityConstants::default_collision_masks](prototype:UtilityConstants::default_collision_m... |
| `map_generator_bounding_box` | `BoundingBox` | yes | Used instead of the collision box during map generation. Allows space entities differently during map generation, for... |
| `selection_box` | `BoundingBox` | yes | Specification of the entity selection area. When empty the entity will have no selection area (and thus is not select... |
| `drawing_box_vertical_extension` | `double` | yes | Specification of extra vertical space needed to see the whole entity in GUIs. This is used to calculate the correct z... |
| `sticker_box` | `BoundingBox` | yes | Used to specify the area where the [sticker](prototype:StickerPrototype) animation can appear for entities that can h... |
| `hit_visualization_box` | `BoundingBox` | yes | Where beams should hit the entity. Useful if the bounding box only covers part of the entity (e.g. feet of the charac... |
| `trigger_target_mask` | `TriggerTargetMask` | yes | Defaults to the mask from [UtilityConstants::default_trigger_target_mask_by_type](prototype:UtilityConstants::default... |
| `flags` | `EntityPrototypeFlags` | yes |  |
| `tile_buildability_rules` | `array[TileBuildabilityRule]` | yes |  |
| `minable` | `MinableProperties` | yes | The item given to the player when they mine the entity and other properties relevant to mining this entity. |
| `surface_conditions` | `array[SurfaceCondition]` | yes |  |
| `deconstruction_alternative` | `EntityID` | yes | Used to merge multiple entities into one entry in the deconstruction planner. |
| `selection_priority` | `uint8` | yes | The entity with the higher number is selectable before the entity with the lower number. The value `0` will be treate... |
| `build_grid_size` | `uint8` | yes | Supported values are 1 (for 1x1 grid) and 2 (for 2x2 grid, like rails). Internally forced to be `2` for [RailPrototyp... |
| `remove_decoratives` | `'automatic' | 'true' | 'false'` | yes | Whether this entity should remove decoratives that collide with it when this entity is built. When set to "automatic"... |
| `emissions_per_second` | `dict[AirbornePollutantID, double]` | yes | Amount of emissions created (positive number) or cleaned (negative number) every second by the entity. This is passiv... |
| `shooting_cursor_size` | `double` | yes | The cursor size used when shooting at this entity. |
| `created_smoke` | `CreateTrivialSmokeEffectItem` | yes | The smoke that is shown when the entity is placed. |
| `working_sound` | `WorkingSound` | yes | Will also work on entities that don't actually do work. |
| `created_effect` | `Trigger` | yes | The effect/trigger that happens when the entity is placed. |
| `build_sound` | `Sound` | yes |  |
| `mined_sound` | `Sound` | yes |  |
| `mining_sound` | `Sound` | yes |  |
| `rotated_sound` | `Sound` | yes |  |
| `impact_category` | `string` | yes | Name of a [ImpactCategory](prototype:ImpactCategory). |
| `open_sound` | `Sound` | yes |  |
| `close_sound` | `Sound` | yes |  |
| `placeable_position_visualization` | `Sprite` | yes |  |
| `radius_visualisation_specification` | `RadiusVisualisationSpecification` | yes |  |
| `stateless_visualisation` | `StatelessVisualisation | array[StatelessVisualisation]` | yes |  |
| `draw_stateless_visualisations_in_ghost` | `boolean` | yes |  |
| `build_base_evolution_requirement` | `double` | yes |  |
| `alert_icon_shift` | `Vector` | yes |  |
| `alert_icon_scale` | `float` | yes |  |
| `fast_replaceable_group` | `string` | yes | This allows you to replace an entity that's already placed, with a different one in your inventory. For example, repl... |
| `next_upgrade` | `EntityID` | yes | Name of the entity that will be automatically selected as the upgrade of this entity when using the [upgrade planner]... |
| `protected_from_tile_building` | `boolean` | yes | When this is true, this entity prototype should be included during tile collision checks with tiles that have [TilePr... |
| `heating_energy` | `Energy` | yes | This entity can freeze if heating_energy is larger than zero. |
| `allow_copy_paste` | `boolean` | yes |  |
| `selectable_in_game` | `boolean` | yes |  |
| `placeable_by` | `ItemToPlace | array[ItemToPlace]` | yes | Item that when placed creates this entity. Determines which item is picked when "Q" (smart pipette) is used on this e... |
| `remains_when_mined` | `EntityID | array[EntityID]` | yes | The entity that remains when this one is mined, deconstructed or fast-replaced. The entity wont actually be spawned i... |
| `additional_pastable_entities` | `array[EntityID]` | yes | Names of the entity prototypes this entity prototype can be pasted on to in addition to the standard supported types.... |
| `tile_width` | `int32` | yes | Used to determine how the center of the entity should be positioned when building (unless the off-grid [flag](prototy... |
| `tile_height` | `int32` | yes |  |
| `diagonal_tile_grid_size` | `TilePosition` | yes |  |
| `autoplace` | `AutoplaceSpecification` | yes | Used to specify the rules for placing this entity during map generation. |
| `map_color` | `Color` | yes |  |
| `friendly_map_color` | `Color` | yes |  |
| `enemy_map_color` | `Color` | yes |  |
| `water_reflection` | `WaterReflectionDefinition` | yes | May also be defined inside `graphics_set` instead of directly in the entity prototype. This is useful for entities th... |
| `ambient_sounds_group` | `EntityID` | yes |  |
| `ambient_sounds` | `WorldAmbientSoundDefinition | array[WorldAmbientSoundDefinition]` | yes |  |
| `icon_draw_specification` | `IconDrawSpecification` | yes | Used to specify where and how the alt-mode icons should be drawn. |
| `icons_positioning` | `array[IconSequencePositioning]` | yes |  |
| `order` | `Order` | yes | Used to order prototypes in inventory, recipes and GUIs. May not exceed a length of 200 characters. The order string ... |
