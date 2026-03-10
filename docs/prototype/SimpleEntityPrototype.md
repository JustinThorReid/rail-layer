# SimpleEntityPrototype
*typename: `simple-entity`*
*extends: `EntityWithHealthPrototype`*

An extremely basic entity with no special functionality. Used for minable rocks. Cannot be rotated.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `count_as_rock_for_filtered_deconstruction` | `boolean` | yes | Whether this entity should be treated as a rock for the purpose of deconstruction and for [CarPrototype::immune_to_ro... |
| `render_layer` | `RenderLayer` | yes |  |
| `secondary_draw_order` | `int8` | yes | Used to determine render order for entities with the same `render_layer` in the same position. Entities with a higher... |
| `random_animation_offset` | `boolean` | yes |  |
| `random_variation_on_create` | `boolean` | yes | Whether a random graphics variation is chosen when placing the entity/creating it via script/creating it via map gene... |
| `pictures` | `SpriteVariations` | yes | Takes priority over `picture` and `animations`. |
| `picture` | `Sprite4Way` | yes | Takes priority over `animations`. Only the `north` sprite is used because this entity cannot be rotated. |
| `animations` | `AnimationVariations` | yes |  |
| `lower_render_layer` | `RenderLayer` | yes |  |
| `lower_pictures` | `SpriteVariations` | yes |  |
| `stateless_visualisation_variations` | `array[StatelessVisualisation | array[StatelessVisualisation]]` | yes | Loaded and drawn with all `pictures`, `picture` and `animations`. If graphics variation is larger than number of `low... |
