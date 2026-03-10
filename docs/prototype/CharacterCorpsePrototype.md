# CharacterCorpsePrototype
*typename: `character-corpse`*
*extends: `EntityPrototype`*

The corpse of a [CharacterPrototype](prototype:CharacterPrototype).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `time_to_live` | `uint32` | no | 0 for infinite. |
| `render_layer` | `RenderLayer` | yes |  |
| `pictures` | `AnimationVariations` | yes | Mandatory if `picture` is not defined. |
| `picture` | `Animation` | yes | Only loaded, and mandatory if `pictures` is not defined. |
| `armor_picture_mapping` | `dict[ItemID, int32]` | yes | Table of key value pairs, the keys are armor names and the values are numbers. The number is the Animation that is as... |
