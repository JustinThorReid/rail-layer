# DecorativePrototype
*typename: `optimized-decorative`*
*extends: `Prototype`*

Simple decorative purpose objects on the map, they have no health and some of them are removed when
the player builds over. Usually used for grass patches, roots, small plants etc.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `pictures` | `SpriteVariations` | no | Must contain at least 1 picture. |
| `stateless_visualisation` | `StatelessVisualisation | array[StatelessVisualisation]` | yes | Can be defined only when decorative is not "decal" (see `render_layer`). |
| `stateless_visualisation_variations` | `array[StatelessVisualisation | array[StatelessVisualisation]]` | yes | Only loaded if `stateless_visualisation` is not defined. Can be defined only when decorative is not "decal" (see `ren... |
| `collision_box` | `BoundingBox` | yes | Must contain the [0,0] point. Max radius of the collision box is 8. |
| `render_layer` | `RenderLayer` | yes | When "decals" render layer is used, the decorative is treated as decal. That means it will be rendered within tile la... |
| `grows_through_rail_path` | `boolean` | yes |  |
| `opacity_over_water` | `float` | yes | Loaded only if `render_layer` = "decals". Value lower than 1 enables masking by water for decals with `tile_layer` gr... |
| `tile_layer` | `int16` | yes | Mandatory if `render_layer` = "decals". This int16 is converted to a [TileRenderLayer](prototype:TileRenderLayer) int... |
| `decal_overdraw_priority` | `uint16` | yes | Loaded only if `render_layer` = "decals". When decoratives are being spawned by [EnemySpawnerPrototype::spawn_decorat... |
| `collision_mask` | `CollisionMaskConnector` | yes | Defaults to the mask from [UtilityConstants::default_collision_masks](prototype:UtilityConstants::default_collision_m... |
| `walking_sound` | `Sound` | yes |  |
| `trigger_effect` | `TriggerEffect` | yes | Called by [DestroyDecorativesTriggerEffectItem](prototype:DestroyDecorativesTriggerEffectItem). |
| `minimal_separation` | `double` | yes |  |
| `target_count` | `uint16` | yes |  |
| `placed_effect` | `TriggerEffect` | yes |  |
| `autoplace` | `AutoplaceSpecification` | yes |  |
