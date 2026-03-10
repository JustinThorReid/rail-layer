# LoaderPrototype
*extends: `TransportBeltConnectablePrototype`*

Continuously loads and unloads machines, as an alternative to inserters.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `structure` | `LoaderStructure` | yes |  |
| `filter_count` | `uint8` | no | How many item filters this loader has. Maximum count of filtered items in loader is 5. |
| `structure_render_layer` | `RenderLayer` | yes |  |
| `circuit_connector_layer` | `RenderLayer` | yes | Render layer for all directions of the circuit connectors. |
| `container_distance` | `double` | yes | The distance between the position of this loader and the tile of the loader's container target. |
| `allow_rail_interaction` | `boolean` | yes | Whether this loader can load and unload [RollingStockPrototype](prototype:RollingStockPrototype). |
| `allow_container_interaction` | `boolean` | yes | Whether this loader can load and unload stationary inventories such as containers and crafting machines. |
| `per_lane_filters` | `boolean` | yes | If filters are per lane. Can only be set to true if filter_count is equal to 2. |
| `max_belt_stack_size` | `uint8` | yes | Loader will not create stacks on belt that are larger than this value. Must be >= 1. |
| `adjustable_belt_stack_size` | `boolean` | yes | Loader belt stack size can be adjusted at runtime. Requires [LoaderPrototype::max_belt_stack_size](prototype:LoaderPr... |
| `wait_for_full_stack` | `boolean` | yes | When set, this loader will ignore items for which there is not enough to create a full belt stack. Relevant only when... |
| `respect_insert_limits` | `boolean` | yes | When set, this loader will respect the same automated insertion limits as inserters do, instead of inserting up to th... |
| `belt_length` | `double` | yes | How long this loader's belt is. Should be the same as belt_distance, which is hardcoded to `0.5` for [Loader1x2Protot... |
| `energy_source` | `ElectricEnergySource | HeatEnergySource | FluidEnergySource | VoidEnergySource` | yes |  |
| `energy_per_item` | `Energy` | yes | Energy in Joules. Can't be negative. |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `array[CircuitConnectorDefinition]` | yes | First the four cardinal directions for `direction_out`, followed by the four directions for `direction_in`. |
