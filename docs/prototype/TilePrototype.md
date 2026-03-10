# TilePrototype
*typename: `tile`*
*extends: `Prototype`*

A [tile](https://wiki.factorio.com/Tile).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `collision_mask` | `CollisionMaskConnector` | no |  |
| `layer` | `uint8` | no | Specifies transition drawing priority. This represents the positive offset from this tile's `layer_group`. Internally... |
| `layer_group` | `TileRenderLayer` | yes | The base group of render layers this tile belongs to. It can be moved up inside this group using the `layer` property... |
| `build_animations` | `Animation4Way` | yes | The build animation used when this tile is built on a space platform. |
| `build_animations_background` | `Animation4Way` | yes |  |
| `built_animation_frame` | `uint32` | yes | When the build_animations frame reaches this point the tile is built. Mandatory if `build_animations` is defined. |
| `variants` | `TileTransitionsVariants` | no | Graphics for this tile. |
| `map_color` | `Color` | no |  |
| `icons` | `array[IconData]` | yes | Can't be an empty array. If this and `icon` is not set, the `material_background` in `variants` is used as the icon. |
| `icon` | `FileName` | yes | Path to the icon file. If this and `icons` is not set, the `material_background` in `variants` is used as the icon. O... |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
| `lowland_fog` | `boolean` | yes | For surfaces that use [fog effect](prototype:SurfaceRenderParameters::fog) of type `gleba`, this property determines ... |
| `transition_overlay_layer_offset` | `int8` | yes |  |
| `sprite_usage_surface` | `SpriteUsageSurfaceHint` | yes |  |
| `transition_merges_with_tile` | `TileID` | yes |  |
| `effect_color` | `Color` | yes |  |
| `tint` | `Color` | yes |  |
| `particle_tints` | `TileBasedParticleTints` | yes |  |
| `walking_sound` | `Sound` | yes |  |
| `landing_steps_sound` | `Sound` | yes |  |
| `driving_sound` | `InterruptibleSound` | yes |  |
| `build_sound` | `Sound | TileBuildSound` | yes | If this is loaded as one Sound, it is loaded as the "small" build sound. |
| `mined_sound` | `Sound` | yes |  |
| `walking_speed_modifier` | `double` | yes |  |
| `vehicle_friction_modifier` | `double` | yes |  |
| `decorative_removal_probability` | `float` | yes |  |
| `allowed_neighbors` | `array[TileID]` | yes | Array of tile names that are allowed next to this one. |
| `needs_correction` | `boolean` | yes | Whether the tile needs tile correction logic applied when it's generated in the world, to prevent graphical artifacts... |
| `minable` | `MinableProperties` | yes | If you want the tile to not be mineable, don't specify the minable property. Only non-mineable tiles become hidden ti... |
| `fluid` | `FluidID` | yes |  |
| `next_direction` | `TileID` | yes |  |
| `can_be_part_of_blueprint` | `boolean` | yes |  |
| `is_foundation` | `boolean` | yes |  |
| `destroys_dropped_items` | `boolean` | yes | If items dropped on this tile are destroyed. |
| `allows_being_covered` | `boolean` | yes |  |
| `searchable` | `boolean` | yes |  |
| `max_health` | `float` | yes | Must be equal to or greater than 0. |
| `weight` | `Weight` | yes |  |
| `dying_explosion` | `ExplosionDefinition | array[ExplosionDefinition]` | yes | Triggers when a foundation tile is destroyed by an asteroid. |
| `absorptions_per_second` | `dict[AirbornePollutantID, double]` | yes |  |
| `default_cover_tile` | `TileID` | yes |  |
| `frozen_variant` | `TileID` | yes |  |
| `thawed_variant` | `TileID` | yes |  |
| `effect` | `TileEffectDefinitionID` | yes |  |
| `trigger_effect` | `TriggerEffect` | yes | Called by [InvokeTileEffectTriggerEffectItem](prototype:InvokeTileEffectTriggerEffectItem). |
| `default_destroyed_dropped_item_trigger` | `Trigger` | yes | The effect/trigger that runs when an item is destroyed by being dropped on this tile. If the item defines [its own tr... |
| `scorch_mark_color` | `Color` | yes |  |
| `check_collision_with_entities` | `boolean` | yes | If set to true, the game will check for collisions with entities before building or mining the tile. If entities are ... |
| `effect_color_secondary` | `Color` | yes | Used by the [pollution](https://wiki.factorio.com/Pollution) shader. |
| `effect_is_opaque` | `boolean` | yes |  |
| `transitions` | `array[TileTransitionsToTiles]` | yes | Extra transitions. |
| `transitions_between_transitions` | `array[TileTransitionsBetweenTransitions]` | yes |  |
| `autoplace` | `AutoplaceSpecification` | yes |  |
| `placeable_by` | `ItemToPlace | array[ItemToPlace]` | yes |  |
| `bound_decoratives` | `DecorativeID | array[DecorativeID]` | yes |  |
| `ambient_sounds_group` | `TileID` | yes |  |
| `ambient_sounds` | `WorldAmbientSoundDefinition | array[WorldAmbientSoundDefinition]` | yes |  |
