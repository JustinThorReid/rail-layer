# ElectricEnergyInterfacePrototype
*typename: `electric-energy-interface`*
*extends: `EntityWithOwnerPrototype`*

Entity with electric energy source with that can have some of its values changed runtime. Useful for
modding in energy consumers/producers.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `energy_source` | `ElectricEnergySource` | no |  |
| `energy_production` | `Energy` | yes |  |
| `energy_usage` | `Energy` | yes |  |
| `gui_mode` | `'all' | 'none' | 'admins'` | yes |  |
| `continuous_animation` | `boolean` | yes | Whether the electric energy interface animation always runs instead of being scaled to activity. |
| `render_layer` | `RenderLayer` | yes |  |
| `light` | `LightDefinition` | yes | The light that this electric energy interface emits. |
| `picture` | `Sprite` | yes |  |
| `pictures` | `Sprite4Way` | yes | Only loaded if `picture` is not defined. |
| `animation` | `Animation` | yes | Only loaded if both `picture` and `pictures` are not defined. |
| `animations` | `Animation4Way` | yes | Only loaded if `picture`, `pictures`, and `animation` are not defined. |
| `allow_copy_paste` | `boolean` | yes |  |
