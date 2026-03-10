# SimpleEntityWithOwnerPrototype
*typename: `simple-entity-with-owner`*
*extends: `EntityWithOwnerPrototype`*

Has a force, but unlike [SimpleEntityWithForcePrototype](prototype:SimpleEntityWithForcePrototype)
it is only attacked if the biters get stuck on it (or if [EntityWithOwnerPrototype::is_military_targ
et](prototype:EntityWithOwnerPrototype::is_military_target) set to true to make the two entity types
equivalent).  Can be rotated in 4 directions. `picture` can be used to specify different graphics
per direction.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `render_layer` | `RenderLayer` | yes |  |
| `secondary_draw_order` | `int8` | yes | Used to determine render order for entities with the same `render_layer` in the same position. Entities with a higher... |
| `random_animation_offset` | `boolean` | yes |  |
| `random_variation_on_create` | `boolean` | yes | Whether a random graphics variation is chosen when placing the entity/creating it via script/creating it via map gene... |
| `pictures` | `SpriteVariations` | yes | Takes priority over `picture` and `animations`. |
| `picture` | `Sprite4Way` | yes | Takes priority over `animations`. |
| `animations` | `AnimationVariations` | yes |  |
| `lower_render_layer` | `RenderLayer` | yes |  |
| `lower_pictures` | `SpriteVariations` | yes | Loaded and drawn with all `pictures`, `picture` and `animations`. If graphics variation is larger than number of `low... |
| `stateless_visualisation_variations` | `array[StatelessVisualisation | array[StatelessVisualisation]]` | yes |  |
| `force_visibility` | `ForceCondition` | yes | If the entity is not visible to a player, the player cannot select it. |
