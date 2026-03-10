# LuaForce

`LuaForce` encapsulates data local to each "force" or "faction" of the game. Default forces are
player, enemy and neutral. Players and mods can create additional forces (up to 64 total).

## Attributes

### `name` — `string` (read-only)

Name of the force.

### `technologies` — `LuaCustomTable` (read-only)

Technologies owned by this force, indexed by `name`.

### `recipes` — `LuaCustomTable` (read-only)

Recipes available to this force, indexed by `name`.

### `manual_mining_speed_modifier` — `double`

Multiplier of the manual mining speed. Default value is `0`. The actual mining speed will be
multiplied by `1 + manual_mining_speed_modifier`.

### `manual_crafting_speed_modifier` — `double`

Multiplier of the manual crafting speed. Default value is `0`. The actual crafting speed will be
multiplied by `1 + manual_crafting_speed_modifier`.

### `laboratory_speed_modifier` — `double`

### `laboratory_productivity_bonus` — `double`

### `worker_robots_speed_modifier` — `double`

### `worker_robots_battery_modifier` — `double`

### `worker_robots_storage_bonus` — `double`

### `current_research` — `LuaTechnology` (read-only) *(optional)*

The currently ongoing technology research, if any.

### `research_progress` — `double`

Progress of current research, as a number in range `[0, 1]`.

### `previous_research` — `LuaTechnology` *(optional)*

The previous research, if any.

### `inserter_stack_size_bonus` — `double`

The inserter stack size bonus for non stack inserters

### `bulk_inserter_capacity_bonus` — `uint32`

Number of items that can be transferred by bulk inserters. When writing to this value, it must be >=
0 and <= 254.

### `belt_stack_size_bonus` — `uint32`

Belt stack size bonus.

### `character_trash_slot_count` — `double`

Number of character trash slots.

### `maximum_following_robot_count` — `uint32`

Maximum number of follower robots.

### `following_robots_lifetime_modifier` — `double`

Additional lifetime for following robots.

### `create_ghost_on_entity_death` — `boolean`

When an entity dies, a ghost will be placed for automatic reconstruction.

### `circuit_network_enabled` — `boolean`

### `cliff_deconstruction_enabled` — `boolean`

When true, cliffs will be marked for deconstruction when trying to force-build things that collide.

### `mining_with_fluid` — `boolean`

### `rail_support_on_deep_oil_ocean` — `boolean`

### `rail_planner_allow_elevated_rails` — `boolean`

### `vehicle_logistics` — `boolean`

When true, cars/tanks that support logistics will be able to use them.

### `players` — `array[LuaPlayer]` (read-only)

Players belonging to this force.

### `ai_controllable` — `boolean`

Enables some higher-level AI behaviour for this force. When set to `true`, biters belonging to this
force will automatically expand into new territories, build new spawners, and form unit groups. By
default, this value is `true` for the enemy force and `false` for all others.  Setting this to
`false` does not turn off biters' AI. They will still move around and attack players who come close.
It is necessary for a force to be AI controllable in order to be able to create unit groups or build
bases from scripts.

### `logistic_networks` — `dict[string, array[LuaLogisticNetwork]]` (read-only)

List of logistic networks, grouped by surface.

### `character_running_speed_modifier` — `double`

Modifies the running speed of all characters in this force by the given value as a percentage.
Setting the running modifier to `0.5` makes the character run 50% faster. The minimum value of `-1`
reduces the movement speed by 100%, resulting in a speed of `0`.

### `artillery_range_modifier` — `double`

### `beacon_distribution_modifier` — `double`

### `character_build_distance_bonus` — `uint32`

### `character_item_drop_distance_bonus` — `uint32`

### `character_reach_distance_bonus` — `uint32`

### `character_resource_reach_distance_bonus` — `double`

### `character_item_pickup_distance_bonus` — `double`

### `character_loot_pickup_distance_bonus` — `double`

### `character_inventory_slots_bonus` — `uint32`

The number of additional inventory slots the character main inventory has.

### `deconstruction_time_to_live` — `uint32`

The time, in ticks, before a deconstruction order is removed.

### `character_health_bonus` — `double`

### `max_successful_attempts_per_tick_per_construction_queue` — `uint32`

### `max_failed_attempts_per_tick_per_construction_queue` — `uint32`

### `character_logistic_requests` — `boolean`

`true` if character requester logistics is enabled.

### `rockets_launched` — `uint32`

The number of rockets launched.

### `items_launched` — `dict[string, ItemCountType]` (read-only)

All of the items that have been launched in rockets.

### `connected_players` — `array[LuaPlayer]` (read-only)

The connected players belonging to this force.  This is primarily useful when you want to do some
action against all online players of this force.  This does *not* index using player index. See
[LuaPlayer::index](runtime:LuaPlayer::index) on each player instance for the player index.

### `mining_drill_productivity_bonus` — `double`

### `train_braking_force_bonus` — `double`

### `friendly_fire` — `boolean`

If friendly fire is enabled for this force.

### `share_chart` — `boolean`

If sharing chart data is enabled for this force.

### `index` — `uint32` (read-only)

This force's index in [LuaGameScript::forces](runtime:LuaGameScript::forces) (unique ID). It is
assigned when a force is created, and remains so until it is [merged](runtime:on_forces_merged) (ie.
deleted). Indexes of merged forces can be reused.

### `research_queue` — `array[TechnologyID]`

The research queue of this force. The first technology in the array is the currently active one.
Reading this attribute gives an array of [LuaTechnology](runtime:LuaTechnology).  To write to this,
the entire table must be written. Providing an empty table or `nil` will empty the research queue
and cancel the current research.  Writing to this when the research queue is disabled will simply
set the last research in the table as the current research.  This only allows mods to queue research
that this force is able to research in the first place. As an example, an already researched
technology or one whose prerequisites are not fulfilled will not be queued, but dropped silently
instead.

### `research_enabled` — `boolean` (read-only)

Whether research is enabled for this force, see
[LuaForce::enable_research](runtime:LuaForce::enable_research) and
[LuaForce::disable_research](runtime:LuaForce::disable_research).

### `platforms` — `dict[uint32, LuaSpacePlatform]` (read-only)

The space platforms that belong to this force mapped by their index value.  This will include
platforms that are pending deletion.

### `custom_color` — `Color` *(optional)*

Custom color for this force. If specified, will take priority over other sources of the force color.
Writing `nil` clears custom color. Will return `nil` if it was not specified or if was set to
`{0,0,0,0}`.

### `color` — `Color` (read-only)

Effective color of this force.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

## Methods

### `get_entity_count(name: EntityID) -> uint32`

Count entities of given type.  This function has O(1) time complexity as entity counts are kept and
maintained in the game engine.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `EntityID` | no | Prototype name of the entity. |

**Returns:**

- `uint32` — Number of entities of given prototype belonging to this force.

### `disable_research()`

Disable research for this force.

### `enable_research()`

Enable research for this force.

### `disable_all_prototypes()`

Disable all recipes and technologies. Only recipes and technologies enabled explicitly will be
useable from this point.

### `enable_all_prototypes()`

Enables all recipes and technologies. The opposite of
[LuaForce::disable_all_prototypes](runtime:LuaForce::disable_all_prototypes).

### `reset_recipes()`

Load the original version of all recipes from the prototypes.

### `enable_all_recipes()`

Unlock all recipes.

### `enable_all_technologies()`

Unlock all technologies.

### `research_all_technologies(?include_disabled_prototypes: boolean)`

Research all technologies.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `include_disabled_prototypes` | `boolean` | yes | Whether technologies that are explicitly disabled in the prototype should also be researched. Defaults to `false`. |

### `reset_technologies()`

Load the original versions of technologies from prototypes. Preserves research state of
technologies.

### `reset()`

Reset everything. All technologies are set to not researched, all modifiers are set to default
values.

### `reset_technology_effects()`

Reapplies all possible research effects, including unlocked recipes. Any custom changes are lost.
Preserves research state of technologies.

### `chart(surface: SurfaceIdentification, area: BoundingBox)`

Chart a portion of the map. The chart for the given area is refreshed; it creates chart for any
parts of the given area that haven't been charted yet.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |
| `area` | `BoundingBox` | no | The area on the given surface to chart. |

### `clear_chart(?surface: SurfaceIdentification)`

Erases chart data for this force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | yes | Which surface to erase chart data for or if not provided all surfaces charts are erased. |

### `rechart(?surface: SurfaceIdentification)`

Force a rechart of the whole chart.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | yes | Which surface to rechart or all if not given. |

### `chart_all(?surface: SurfaceIdentification)`

Chart all generated chunks.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | yes | Which surface to chart or all if not given. |

### `copy_from(force: ForceID)`

Copies all of the given changeable values (except charts) from the given force to this force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no | The force to copy from. |

### `copy_chart(source_force: ForceID, source_surface: SurfaceIdentification, destination_surface: SurfaceIdentification)`

Copies the given surface's chart from the given force to this force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source_force` | `ForceID` | no | The force to copy from |
| `source_surface` | `SurfaceIdentification` | no | The surface to copy from. |
| `destination_surface` | `SurfaceIdentification` | no | The surface to copy to. |

### `is_chunk_charted(surface: SurfaceIdentification, chunk_position: ChunkPosition) -> boolean`

Has a chunk been charted?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |
| `chunk_position` | `ChunkPosition` | no | Position of the chunk. |

**Returns:**

- `boolean` — 

### `is_chunk_visible(surface: SurfaceIdentification, chunk_position: ChunkPosition) -> boolean`

Is the given chunk currently charted and visible (not covered by fog of war) on the map.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |
| `chunk_position` | `ChunkPosition` | no |  |

**Returns:**

- `boolean` — 

### `is_chunk_requested_for_charting(surface: SurfaceIdentification, chunk_position: ChunkPosition) -> boolean`

Has a chunk been requested for charting?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |
| `chunk_position` | `ChunkPosition` | no | Position of the chunk. |

**Returns:**

- `boolean` — 

### `cancel_charting(?surface: SurfaceIdentification)`

Cancels pending chart requests for the given surface or all surfaces.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | yes |  |

### `get_ammo_damage_modifier(ammo: string) -> double`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ammo` | `string` | no | Ammo category |

**Returns:**

- `double` — 

### `set_ammo_damage_modifier(ammo: string, modifier: double)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ammo` | `string` | no | Ammo category |
| `modifier` | `double` | no |  |

### `get_gun_speed_modifier(ammo: string) -> double`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ammo` | `string` | no | Ammo category |

**Returns:**

- `double` — 

### `set_gun_speed_modifier(ammo: string, modifier: double)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `ammo` | `string` | no | Ammo category |
| `modifier` | `double` | no |  |

### `get_turret_attack_modifier(turret: EntityID) -> double`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `turret` | `EntityID` | no | Turret prototype name |

**Returns:**

- `double` — 

### `set_turret_attack_modifier(turret: EntityID, modifier: double)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `turret` | `EntityID` | no | Turret prototype name |
| `modifier` | `double` | no |  |

### `set_cease_fire(other: ForceID, cease_fire: boolean)`

Add `other` force to this force's cease fire list. Forces on the cease fire list won't be targeted
for attack.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other` | `ForceID` | no |  |
| `cease_fire` | `boolean` | no |  |

### `get_cease_fire(other: ForceID) -> boolean`

Is `other` force in this force's cease fire list?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other` | `ForceID` | no |  |

**Returns:**

- `boolean` — 

### `set_friend(other: ForceID, friend: boolean)`

Add `other` force to this force's friends list. Friends have unrestricted access to buildings and
turrets won't fire at them.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other` | `ForceID` | no |  |
| `friend` | `boolean` | no |  |

### `get_friend(other: ForceID) -> boolean`

Is `other` force in this force's friends list.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other` | `ForceID` | no |  |

**Returns:**

- `boolean` — 

### `is_pathfinder_busy() -> boolean`

Is pathfinder busy? When the pathfinder is busy, it won't accept any more pathfinding requests.

**Returns:**

- `boolean` — 

### `kill_all_units()`

Kill all units and flush the pathfinder.

### `find_logistic_network_by_position(position: MapPosition, surface: SurfaceIdentification) -> LuaLogisticNetwork`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Position to find a network for |
| `surface` | `SurfaceIdentification` | no | Surface to search on |

**Returns:**

- `LuaLogisticNetwork` — The found network or `nil`.

### `set_spawn_position(position: MapPosition, surface: SurfaceIdentification)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | The new position on the given surface. |
| `surface` | `SurfaceIdentification` | no | Surface to set the spawn position for. |

### `get_spawn_position(surface: SurfaceIdentification) -> MapPosition`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |

**Returns:**

- `MapPosition` — 

### `set_surface_hidden(surface: SurfaceIdentification, hidden: boolean)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no | Surface to set hidden for. |
| `hidden` | `boolean` | no | Whether to hide the surface or not. |

### `get_surface_hidden(surface: SurfaceIdentification) -> boolean`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |

**Returns:**

- `boolean` — 

### `unchart_chunk(chunk_position: ChunkPosition, surface: SurfaceIdentification)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `chunk_position` | `ChunkPosition` | no | The chunk position to unchart. |
| `surface` | `SurfaceIdentification` | no | Surface to unchart on. |

### `get_item_launched(item: ItemID) -> uint32`

Gets the count of a given item launched in rockets.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemID` | no | The item to get |

**Returns:**

- `uint32` — The count of the item that has been launched.

### `set_item_launched(item: ItemID, count: uint32)`

Sets the count of a given item launched in rockets.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item` | `ItemID` | no | The item to set |
| `count` | `uint32` | no | The count to set |

### `print(message: LocalisedString, ?print_settings: PrintSettings)`

Print text to the chat console of all players on this force.  By default, messages that are
identical to a message sent in the last 60 ticks are not printed again.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `message` | `LocalisedString` | no |  |
| `print_settings` | `PrintSettings` | yes |  |

### `add_chart_tag(surface: SurfaceIdentification, tag: ChartTagSpec) -> LuaCustomChartTag`

Adds a custom chart tag to the given surface and returns the new tag or `nil` if the given position
isn't valid for a chart tag.  The chunk must be charted for a tag to be valid at that location.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no | Which surface to add the tag to. |
| `tag` | `ChartTagSpec` | no | The tag to add. |

**Returns:**

- `LuaCustomChartTag` — 

### `find_chart_tags(surface: SurfaceIdentification, ?area: BoundingBox) -> array[LuaCustomChartTag]`

Finds all custom chart tags within a given area on the given surface. If no area is given all custom
chart tags on the surface are returned.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |
| `area` | `BoundingBox` | yes |  |

**Returns:**

- `array[LuaCustomChartTag]` — 

### `reset_evolution()`

Resets evolution for this force to zero.

### `play_sound(sound_specification: PlaySoundSpecification)`

Play a sound for every player in this force.  The sound is not played if its location is not
[charted](runtime:LuaForce::chart) for this force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sound_specification` | `PlaySoundSpecification` | no | The sound to play. |

### `get_hand_crafting_disabled_for_recipe(recipe: RecipeID) -> boolean`

Gets if the given recipe is explicitly disabled from being hand crafted.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `recipe` | `RecipeID` | no |  |

**Returns:**

- `boolean` — 

### `set_hand_crafting_disabled_for_recipe(recipe: RecipeID, hand_crafting_disabled: boolean)`

Sets if the given recipe can be hand-crafted. This is used to explicitly disable hand crafting a
recipe - it won't allow hand-crafting otherwise not hand-craftable recipes.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `recipe` | `RecipeID` | no |  |
| `hand_crafting_disabled` | `boolean` | no |  |

### `add_research(technology: TechnologyID) -> boolean`

Add this technology to the back of the research queue if the queue is enabled. Otherwise, set this
technology to be researched now.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `technology` | `TechnologyID` | no |  |

**Returns:**

- `boolean` — Whether the technology was successfully added.

### `cancel_current_research()`

Stop the research currently in progress. This will remove any dependent technologies from the
research queue.

### `get_linked_inventory(prototype: EntityID, link_id: uint32) -> LuaInventory`

Gets the linked inventory for the given prototype and link ID if it exists or `nil`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `prototype` | `EntityID` | no |  |
| `link_id` | `uint32` | no |  |

**Returns:**

- `LuaInventory` — 

### `is_friend(other: ForceID) -> boolean`

Is this force a friend? This differs from `get_friend` in that it is always true for neutral force.
This is equivalent to checking the `friend` ForceCondition.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other` | `ForceID` | no |  |

**Returns:**

- `boolean` — 

### `is_enemy(other: ForceID) -> boolean`

Is this force an enemy? This differs from `get_cease_fire` in that it is always false for neutral
force. This is equivalent to checking the `enemy` ForceCondition.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `other` | `ForceID` | no |  |

**Returns:**

- `boolean` — 

### `lock_space_location(name: SpaceLocationID)`

Locks the planet to not be accessible to this force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `SpaceLocationID` | no | Name of the planet. |

### `unlock_space_location(name: SpaceLocationID)`

Unlocks the planet to be accessible to this force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `SpaceLocationID` | no | Name of the planet. |

### `is_space_location_unlocked(name: SpaceLocationID)`

Is the specified planet unlocked for this force?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `SpaceLocationID` | no | Name of the planet. |

### `lock_quality(quality: QualityID)`

Locks the quality to not be accessible to this force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | no | Name of the quality. |

### `unlock_quality(quality: QualityID)`

Unlocks the quality to be accessible to this force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | no | Name of the quality. |

### `is_quality_unlocked(quality: QualityID)`

Is the specified quality unlocked for this force?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `quality` | `QualityID` | no | Name of the quality. |

### `lock_space_platforms()`

Locks the space platforms, which disables the space platforms button

### `unlock_space_platforms()`

Unlocks the space platforms, which enables the space platforms button

### `is_space_platforms_unlocked() -> boolean`

Are the space platforms unlocked? This basically just controls the availability of the space
platforms button.

**Returns:**

- `boolean` — 

### `create_space_platform(?name: string, planet: SpaceLocationID, starter_pack: ItemWithQualityID) -> LuaSpacePlatform`

Creates a new space platform on this force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | yes | The platform name. If not provided, a random name will be used. |
| `planet` | `SpaceLocationID` | no | The planet that the platform will orbit. |
| `starter_pack` | `ItemWithQualityID` | no | The starter pack required to build the platform. |

**Returns:**

- `LuaSpacePlatform` — 

### `get_evolution_factor(?surface: SurfaceIdentification) -> double`

Fetches the evolution factor of this force on the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | yes | Defaults to "nauvis". |

**Returns:**

- `double` — 

### `get_evolution_factor_by_pollution(?surface: SurfaceIdentification) -> double`

Fetches the pollution part of the evolution factor of this force on the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | yes | Defaults to "nauvis". |

**Returns:**

- `double` — 

### `get_evolution_factor_by_time(?surface: SurfaceIdentification) -> double`

Fetches the time part of the evolution factor of this force on the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | yes | Defaults to "nauvis". |

**Returns:**

- `double` — 

### `get_evolution_factor_by_killing_spawners(?surface: SurfaceIdentification) -> double`

Fetches the spawner kill part of the evolution factor of this force on the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | yes | Defaults to "nauvis". |

**Returns:**

- `double` — 

### `set_evolution_factor(factor: double, ?surface: SurfaceIdentification)`

Sets the evolution factor of this force on the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `factor` | `double` | no |  |
| `surface` | `SurfaceIdentification` | yes | Defaults to "nauvis". |

### `set_evolution_factor_by_pollution(factor: double, ?surface: SurfaceIdentification)`

Sets the pollution part of the evolution factor of this force on the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `factor` | `double` | no |  |
| `surface` | `SurfaceIdentification` | yes | Defaults to "nauvis". |

### `set_evolution_factor_by_time(factor: double, ?surface: SurfaceIdentification)`

Sets the time part of the evolution factor of this force on the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `factor` | `double` | no |  |
| `surface` | `SurfaceIdentification` | yes | Defaults to "nauvis". |

### `set_evolution_factor_by_killing_spawners(factor: double, ?surface: SurfaceIdentification)`

Sets the spawner kill part of the evolution factor of this force on the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `factor` | `double` | no |  |
| `surface` | `SurfaceIdentification` | yes | Defaults to "nauvis". |

### `get_item_production_statistics(surface: SurfaceIdentification) -> LuaFlowStatistics`

The item production statistics for this force for the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |

**Returns:**

- `LuaFlowStatistics` — 

### `get_fluid_production_statistics(surface: SurfaceIdentification) -> LuaFlowStatistics`

The fluid production statistics for this force for the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |

**Returns:**

- `LuaFlowStatistics` — 

### `get_kill_count_statistics(surface: SurfaceIdentification) -> LuaFlowStatistics`

The kill counter statistics for this force for the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |

**Returns:**

- `LuaFlowStatistics` — 

### `get_entity_build_count_statistics(surface: SurfaceIdentification) -> LuaFlowStatistics`

The entity build statistics for this force (built and mined) for the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |

**Returns:**

- `LuaFlowStatistics` — 

### `get_logistic_groups(?type: defines.logistic_group_type) -> array[string]`

Gets the names of the current logistic groups.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `defines.logistic_group_type` | yes | Defaults to `defines.logistic_group_type.with_trash`. |

**Returns:**

- `array[string]` — 

### `get_logistic_group(name: string, ?type: defines.logistic_group_type) -> LogisticGroup`

Gets the information about the given logistic group.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no |  |
| `type` | `defines.logistic_group_type` | yes | Defaults to `defines.logistic_group_type.with_trash`. |

**Returns:**

- `LogisticGroup` — 

### `create_logistic_group(name: string, ?type: defines.logistic_group_type)`

Creates the given group if it doesn't already exist.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no |  |
| `type` | `defines.logistic_group_type` | yes | Defaults to `defines.logistic_group_type.with_trash`. |

### `delete_logistic_group(name: string, ?type: defines.logistic_group_type)`

Deletes the given logistic group if it exists.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no |  |
| `type` | `defines.logistic_group_type` | yes | Defaults to `defines.logistic_group_type.with_trash`. |

### `get_chunk_chart(surface: SurfaceIdentification, chunk_position: ChunkPosition) -> string`

Gets the raw chart data for a given chunk as a binary string.  The pixel data is returned in RGB565
format (2 bytes per pixel).  Returns `nil` if the chunk has not been charted for this force.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |
| `chunk_position` | `ChunkPosition` | no |  |

**Returns:**

- `string` — The raw pixel data.

### `script_trigger_research(technology: TechnologyID)`

Trigger the "scripted" [research trigger](runtime:ResearchTrigger) of a technology, researching it.
Does nothing if the technology does not have a "scripted" research trigger.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `technology` | `TechnologyID` | no |  |
