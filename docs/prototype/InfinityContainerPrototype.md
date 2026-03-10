# InfinityContainerPrototype
*typename: `infinity-container`*
*extends: `LogisticContainerPrototype`*

A generic container, such as a chest, that can spawn or void items and interact with the logistics
network.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `erase_contents_when_mined` | `boolean` | no |  |
| `preserve_contents_when_created` | `boolean` | yes | When true, items created inside the infinity chest will not start to spoil until they have been removed from the chest. |
| `gui_mode` | `'all' | 'none' | 'admins'` | yes | Controls which players can control what the chest spawns. |
| `logistic_mode` | `'active-provider' | 'passive-provider' | 'requester' | 'storage' | 'buffer'` | yes | The way this chest interacts with the logistic network. |
| `render_not_in_network_icon` | `boolean` | yes | Whether the "no network" icon should be rendered on this entity if the entity is not within a logistics network. |
| `inventory_size` | `ItemStackIndex` | no | The number of slots in this container. May not be zero. |
