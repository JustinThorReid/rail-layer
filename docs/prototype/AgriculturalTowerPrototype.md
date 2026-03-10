# AgriculturalTowerPrototype
*typename: `agricultural-tower`*
*extends: `EntityWithOwnerPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `graphics_set` | `CraftingMachineGraphicsSet` | yes |  |
| `crane` | `AgriculturalCraneProperties` | no |  |
| `energy_source` | `EnergySource` | no |  |
| `input_inventory_size` | `ItemStackIndex` | no |  |
| `output_inventory_size` | `ItemStackIndex` | yes |  |
| `energy_usage` | `Energy` | no | The amount of energy this agricultural tower uses for each planted or harvested [plant](prototype:PlantPrototype). |
| `crane_energy_usage` | `Energy` | no | The amount of energy this agricultural tower uses while the crane is moving. |
| `radius` | `double` | no | The radius represents [grid tiles](prototype:AgriculturalTowerPrototype::growth_grid_tile_size) which are created aro... |
| `growth_grid_tile_size` | `uint32` | yes | The size of one grid tile a [plant](prototype:PlantPrototype) is planted into. Must be positive. |
| `growth_area_radius` | `double` | yes | The minimum radius of empty space a [plant](prototype:PlantPrototype) requires around it to be planted. Must be >= 0 ... |
| `random_growth_offset` | `double` | yes | The maximum offset from the grid tile center which will be applied to the planting spot selected by this agricultural... |
| `randomize_planting_tile` | `boolean` | yes | Whether the agricultural tower will start from a random grid tile when given a planting task. |
| `radius_visualisation_picture` | `Sprite` | yes |  |
| `central_orienting_sound` | `InterruptibleSound` | yes |  |
| `arm_extending_sound` | `InterruptibleSound` | yes |  |
| `grappler_orienting_sound` | `InterruptibleSound` | yes |  |
| `grappler_extending_sound` | `InterruptibleSound` | yes |  |
| `planting_sound` | `Sound` | yes |  |
| `harvesting_sound` | `Sound` | yes |  |
| `central_orienting_sound_source` | `string` | yes |  |
| `arm_extending_sound_source` | `string` | yes |  |
| `grappler_orienting_sound_source` | `string` | yes |  |
| `grappler_extending_sound_source` | `string` | yes |  |
| `planting_procedure_points` | `array[Vector3D]` | yes |  |
| `harvesting_procedure_points` | `array[Vector3D]` | yes |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `circuit_connector` | `CircuitConnectorDefinition` | yes |  |
| `accepted_seeds` | `array[ItemID]` | yes | When missing, all items with [plant result](prototype:ItemPrototype::plant_result) will be accepted. When provided, o... |
