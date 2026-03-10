# InfinityCargoWagonPrototype
*typename: `infinity-cargo-wagon`*
*extends: `CargoWagonPrototype`*

A cargo wagon that can spawn or void items at will.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `erase_contents_when_mined` | `boolean` | yes |  |
| `preserve_contents_when_created` | `boolean` | yes | When true, items created inside the infinity cargo wagon will not start to spoil until they have been removed from th... |
| `gui_mode` | `'all' | 'none' | 'admins'` | yes | Controls which players can control what the chest spawns. |
