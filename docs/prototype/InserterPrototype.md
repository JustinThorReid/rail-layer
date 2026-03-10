# InserterPrototype
*typename: `inserter`*
*extends: `EntityWithOwnerPrototype`*

An [inserter](https://wiki.factorio.com/Inserter).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `extension_speed` | `double` | no |  |
| `rotation_speed` | `double` | no |  |
| `starting_distance` | `double` | yes |  |
| `insert_position` | `Vector` | no |  |
| `pickup_position` | `Vector` | no |  |
| `platform_picture` | `Sprite4Way` | yes |  |
| `platform_frozen` | `Sprite4Way` | yes |  |
| `hand_base_picture` | `Sprite` | yes |  |
| `hand_open_picture` | `Sprite` | yes |  |
| `hand_closed_picture` | `Sprite` | yes |  |
| `hand_base_frozen` | `Sprite` | yes |  |
| `hand_open_frozen` | `Sprite` | yes |  |
| `hand_closed_frozen` | `Sprite` | yes |  |
| `hand_base_shadow` | `Sprite` | yes |  |
| `hand_open_shadow` | `Sprite` | yes |  |
| `hand_closed_shadow` | `Sprite` | yes |  |
| `energy_source` | `EnergySource` | no | Defines how this inserter gets energy. The emissions set on the energy source are ignored so inserters cannot produce... |
| `energy_per_movement` | `Energy` | yes |  |
| `energy_per_rotation` | `Energy` | yes |  |
| `bulk` | `boolean` | yes | Whether this inserter is considered a bulk inserter. Relevant for determining how [inserter capacity bonus (research)... |
| `uses_inserter_stack_size_bonus` | `boolean` | yes | When set to false, then relevant value of inserter stack size bonus ([LuaForce::inserter_stack_size_bonus](runtime:Lu... |
| `allow_custom_vectors` | `boolean` | yes | Whether pickup and insert position can be set run-time. |
| `allow_burner_leech` | `boolean` | yes | Whether this burner inserter can fuel itself from the fuel inventory of the entity it is picking up items from. |
| `draw_held_item` | `boolean` | yes | Whether the item that the inserter is holding should be drawn. |
| `use_easter_egg` | `boolean` | yes | Whether the inserter should be able to fish [fish](https://wiki.factorio.com/Raw_fish). |
| `grab_less_to_match_belt_stack` | `boolean` | yes | If drop target is belt, inserter may grab less so that it does not drop partial stacks unless it is forced to drop pa... |
| `wait_for_full_hand` | `boolean` | yes | Inserter will wait until its hand is full. |
| `enter_drop_mode_if_held_stack_spoiled` | `boolean` | yes | If inserter waits for full hand it could become stuck when item in hand changed because of spoiling. If this flag is ... |
| `max_belt_stack_size` | `uint8` | yes | This inserter will not create stacks on belt with more than this amount of items. Must be >= 1. |
| `filter_count` | `uint8` | yes | How many filters this inserter has. Maximum count of filtered items in inserter is 5. |
| `hand_size` | `double` | yes | Used to determine how long the arm of the inserter is when drawing it. Does not affect gameplay. The lower the value,... |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `default_stack_control_input_signal` | `SignalIDConnector` | yes |  |
| `draw_inserter_arrow` | `boolean` | yes | Whether the yellow arrow that indicates the drop point of the inserter and the line that indicates the pickup positio... |
| `chases_belt_items` | `boolean` | yes | Whether the inserter hand should move to the items it picks up from belts, leading to item chasing behaviour. If this... |
| `stack_size_bonus` | `uint8` | yes | Stack size bonus that is inherent to the prototype without having to be researched. |
| `circuit_connector` | `(CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition, CircuitConnectorDefinition)` | yes |  |
