# LogisticContainerPrototype
*typename: `logistic-container`*
*extends: `ContainerPrototype`*

A generic container, such as a chest, that interacts with the logistics network.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `logistic_mode` | `'active-provider' | 'passive-provider' | 'requester' | 'storage' | 'buffer'` | no | The way this chest interacts with the logistic network. |
| `max_logistic_slots` | `uint16` | yes | The number of request slots this logistics container has. Requester-type containers must have > 0 slots and can have ... |
| `trash_inventory_size` | `ItemStackIndex` | yes |  |
| `render_not_in_network_icon` | `boolean` | yes | Whether the "no network" icon should be rendered on this entity if the entity is not within a logistics network. |
| `opened_duration` | `uint8` | yes |  |
| `animation` | `Animation` | yes | Drawn when a robot brings/takes items from this container. |
| `landing_location_offset` | `Vector` | yes | The offset from the center of this container where a robot visually brings/takes items. |
| `use_exact_mode` | `boolean` | yes | Whether logistic robots have to deliver the exact amount of items requested to this logistic container instead of ove... |
| `animation_sound` | `Sound` | yes | Played when a robot brings/takes items from this container. Only loaded if `animation` is defined. |
