# LuaQualityPrototype

Prototype of a quality.

## Attributes

### `color` — `Color` (read-only)

The color of the prototype

### `level` — `uint32` (read-only)

Level basically specifies the stat-increasing value of this quality level.

### `next` — `LuaQualityPrototype` (read-only)

The next higher level of the quality

### `next_probability` — `double` (read-only)

The probability multiplier of getting the next level of quality.

### `draw_sprite_by_default` — `boolean` (read-only)

### `beacon_power_usage_multiplier` — `float` (read-only)

### `mining_drill_resource_drain_multiplier` — `float` (read-only)

### `science_pack_drain_multiplier` — `float` (read-only)

### `default_multiplier` — `double` (read-only)

### `inserter_speed_multiplier` — `double` (read-only)

### `fluid_wagon_capacity_multiplier` — `double` (read-only)

### `inventory_size_multiplier` — `double` (read-only)

### `lab_research_speed_multiplier` — `double` (read-only)

### `crafting_machine_speed_multiplier` — `double` (read-only)

### `crafting_machine_energy_usage_multiplier` — `double` (read-only)

### `logistic_cell_charging_energy_multiplier` — `double` (read-only)

### `tool_durability_multiplier` — `double` (read-only)

### `accumulator_capacity_multiplier` — `double` (read-only)

### `flying_robot_max_energy_multiplier` — `double` (read-only)

### `range_multiplier` — `double` (read-only)

### `equipment_grid_width_bonus` — `int16` (read-only)

### `equipment_grid_height_bonus` — `int16` (read-only)

### `electric_pole_wire_reach_bonus` — `float` (read-only)

### `electric_pole_supply_area_distance_bonus` — `float` (read-only)

### `beacon_supply_area_distance_bonus` — `float` (read-only)

### `mining_drill_mining_radius_bonus` — `float` (read-only)

### `logistic_cell_charging_station_count_bonus` — `uint32` (read-only)

### `asteroid_collector_collection_radius_bonus` — `uint32` (read-only)

### `beacon_module_slots_bonus` — `ItemStackIndex` (read-only)

### `crafting_machine_module_slots_bonus` — `ItemStackIndex` (read-only)

### `mining_drill_module_slots_bonus` — `ItemStackIndex` (read-only)

### `lab_module_slots_bonus` — `ItemStackIndex` (read-only)

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
