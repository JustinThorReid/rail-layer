# FishPrototype
*typename: `fish`*
*extends: `EntityWithHealthPrototype`*

Entity that spawns in water tiles, which can be mined. Moves around unless deactivated with
[LuaEntity::active](runtime:LuaEntity::active) = false.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `pictures` | `SpriteVariations` | yes |  |
