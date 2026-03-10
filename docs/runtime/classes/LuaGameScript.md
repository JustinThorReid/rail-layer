# LuaGameScript

Main toplevel type, provides access to most of the API though its members. An instance of
LuaGameScript is available as the global object named `game`.

## Attributes

### `allow_debug_settings` — `boolean`

Whether players who are not [admins](runtime:LuaPlayer::admin) can access all debug settings. Set
this to false to disallow access to most debug settings for non-admins.  The following debug
settings are always available to all players: `"show-fps"`, `"show-clock"`, `"show-time-to-next-
autosave"`, `"show-detailed-info"`, `"show-time-usage"`, `"show-entity-time-usage"`, `"show-gpu-
time-usage"`, `"show-sprite-counts"`, `"show-particle-counts"`, `"show-collector-navmesh-time-
usage"`, `"show-lua-object-statistics"`, `"show-heat-buffer-info"`, `"show-multiplayer-waiting-
icon"`, `"show-multiplayer-statistics"`, `"show-multiplayer-server-name"`, `"show-debug-info-in-
tooltips"`, `"show-resistances-in-tooltips-always"`, `"hide-mod-guis"`, `"show-tile-grid"`, `"show-
blueprint-grid"`, `"show-intermediate-volume-of-working-sounds"`, `"show-decorative-names"`,
`"allow-increased-zoom"`, `"show-train-no-path-details"`, `"show-entity-tick"`, `"show-update-tick"`

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

### `player` — `LuaPlayer` (read-only) *(optional)*

This property is only populated inside [custom command](runtime:LuaCommandProcessor) handlers and
when writing [Lua console commands](https://wiki.factorio.com/Console#Scripting_and_cheat_commands).
Returns the player that is typing the command, `nil` in all other instances.  See
[LuaGameScript::players](runtime:LuaGameScript::players) for accessing all players.

### `players` — `LuaCustomTable` (read-only)

Get a table of all the players that currently exist. This sparse table allows you to find players by
indexing it with either their `name` or `index`. Iterating this table with `pairs()` will provide
the `index`es as the keys. Iterating with `ipairs()` will not work at all.  If only a single player
is required, [LuaGameScript::get_player](runtime:LuaGameScript::get_player) should be used instead,
as it avoids the unnecessary overhead of passing the whole table to Lua.

### `map_settings` — `MapSettings` (read-only)

The currently active set of map settings. Even though this property is marked as read-only, the
members of the dictionary that is returned can be modified mid-game.  This does not contain
difficulty settings, use
[LuaGameScript::difficulty_settings](runtime:LuaGameScript::difficulty_settings) instead.

### `difficulty_settings` — `DifficultySettings` (read-only)

The currently active set of difficulty settings. Even though this property is marked as read-only,
the members of the dictionary that is returned can be modified mid-game.

### `difficulty` — `defines.difficulty` (read-only)

Current scenario difficulty.

### `forces` — `LuaCustomTable` (read-only)

Get a table of all the forces that currently exist. This sparse table allows you to find forces by
indexing it with either their `name` or `index`. Iterating this table with `pairs()` will provide
the `name`s as the keys. Iterating with `ipairs()` will not work at all.

### `console_command_used` — `boolean` (read-only)

Whether a console command has been used.

### `simulation` — `LuaSimulation` (read-only)

Simulation-related functions, or `nil` if the current game is not a simulation.

### `tick` — `MapTick` (read-only)

Current map tick.

### `ticks_played` — `MapTick` (read-only)

The number of ticks since this game was created using either "new game" or "new game from scenario".
Notably, this number progresses even when the game is
[tick_paused](runtime:LuaGameScript::tick_paused).  This differs from
[LuaGameScript::tick](runtime:LuaGameScript::tick) in that creating a game from a scenario always
starts with this value at `0`, even if the scenario has its own level data where the `tick` has
progressed past `0`.

### `tick_paused` — `boolean`

If the tick has been paused. This means that entity update has been paused.

### `ticks_to_run` — `uint32`

The number of ticks to be run while the tick is paused.  When
[LuaGameScript::tick_paused](runtime:LuaGameScript::tick_paused) is true, ticks_to_run behaves the
following way: While this is > 0, the entity update is running normally and this value is
decremented every tick. When this reaches 0, the game will pause again.

### `finished` — `boolean` (read-only)

True while the victory screen is shown.

### `finished_but_continuing` — `boolean` (read-only)

True after players finished the game and clicked "continue".

### `speed` — `float`

Speed to update the map at. 1.0 is normal speed -- 60 UPS. Minimum value is 0.01.

### `surfaces` — `LuaCustomTable` (read-only)

Get a table of all the surfaces that currently exist. This sparse table allows you to find surfaces
by indexing it with either their `name` or `index`. Iterating this table with `pairs()` will provide
the `name`s as the keys. Iterating with `ipairs()` will not work at all.

### `planets` — `LuaCustomTable` (read-only)

### `connected_players` — `array[LuaPlayer]` (read-only)

The players that are currently online.  This does *not* index using player index. See
[LuaPlayer::index](runtime:LuaPlayer::index) on each player instance for the player index. This is
primarily useful when you want to do some action against all online players.

### `permissions` — `LuaPermissionGroups` (read-only)

### `backer_names` — `LuaCustomTable` (read-only)

Array of the names of all the backers that supported the game development early on. These are used
as names for labs, locomotives, radars, roboports, and train stops.

### `default_map_gen_settings` — `MapGenSettings` (read-only)

The default map gen settings for this save.

### `enemy_has_vision_on_land_mines` — `boolean`

Determines if enemy land mines are completely invisible or not.

### `autosave_enabled` — `boolean`

True by default. Can be used to disable autosaving. Make sure to turn it back on soon after.

### `draw_resource_selection` — `boolean`

True by default. Can be used to disable the highlighting of resource patches when they are hovered
on the map.

### `train_manager` — `LuaTrainManager` (read-only)

### `blueprints` — `array[LuaRecord]` (read-only)

Records contained in the "game blueprints" tab of the blueprint library.

### `technology_notifications_enabled` — `boolean`

True by default. Can be used to prevent the game engine from printing certain messages.

### `allow_tip_activation` — `boolean`

If the tips are allowed to be activated in this scenario, it is false by default.  Can't be modified
in a simulation (menu screen, tips and tricks simulation, factoriopedia simulation etc.)

## Methods

### `set_game_state(?game_finished: boolean, ?player_won: boolean, ?next_level: string, ?can_continue: boolean)`

Set scenario state. Any parameters not provided do not change the current state.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `game_finished` | `boolean` | yes |  |
| `player_won` | `boolean` | yes |  |
| `next_level` | `string` | yes |  |
| `can_continue` | `boolean` | yes |  |

### `reset_game_state()`

Reset scenario state (game_finished, player_won, etc.).

### `set_win_ending_info(title: LocalisedString, ?message: LocalisedString, ?bullet_points: array[LocalisedString], ?final_message: LocalisedString, ?image_path: string)`

Set winning ending information for the current scenario.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `title` | `LocalisedString` | no |  |
| `message` | `LocalisedString` | yes |  |
| `bullet_points` | `array[LocalisedString]` | yes |  |
| `final_message` | `LocalisedString` | yes |  |
| `image_path` | `string` | yes |  |

### `set_lose_ending_info(title: LocalisedString, ?message: LocalisedString, ?bullet_points: array[LocalisedString], ?final_message: LocalisedString, ?image_path: string)`

Set losing ending information for the current scenario.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `title` | `LocalisedString` | no |  |
| `message` | `LocalisedString` | yes |  |
| `bullet_points` | `array[LocalisedString]` | yes |  |
| `final_message` | `LocalisedString` | yes |  |
| `image_path` | `string` | yes |  |

### `get_entity_by_tag(tag: string) -> LuaEntity`

Gets an entity by its [name tag](runtime:LuaEntity::name_tag). Entity name tags can also be set in
the entity "extra settings" GUI in the map editor.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tag` | `string` | no |  |

**Returns:**

- `LuaEntity` — 

### `show_message_dialog(text: LocalisedString, ?image: string, ?point_to: GuiArrowSpecification, ?style: string, ?wrapper_frame_style: string)`

Show an in-game message dialog.  Can only be used when the map contains exactly one player.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `text` | `LocalisedString` | no | What the dialog should say |
| `image` | `string` | yes | Path to an image to show on the dialog |
| `point_to` | `GuiArrowSpecification` | yes | If specified, dialog will show an arrow pointing to this place. When not specified, the arrow will point to the playe... |
| `style` | `string` | yes | The gui style to use for this speech bubble. Must be of type speech_bubble. |
| `wrapper_frame_style` | `string` | yes | Must be of type flow_style. |

### `is_demo() -> boolean`

Is this the demo version of Factorio?

**Returns:**

- `boolean` — 

### `reload_script()`

Forces a reload of the scenario script from the original scenario location.  This disables the
replay if replay is enabled.

### `reload_mods()`

Forces a reload of all mods.  This will act like saving and loading from the mod(s) perspective.
This will do nothing if run in multiplayer.  This disables the replay if replay is enabled.

### `save_atlas()`

Saves the current configuration of Atlas to a file. This will result in huge file containing all of
the game graphics moved to as small space as possible.  Exists mainly for debugging reasons.

### `check_consistency()`

Run internal consistency checks. Allegedly prints any errors it finds.  Exists mainly for debugging
reasons.

### `regenerate_entity(entities: string | array[string])`

Regenerate autoplacement of some entities on all surfaces. This can be used to autoplace newly-added
entities.  All specified entity prototypes must be autoplacable.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entities` | `string | array[string]` | no | Prototype names of entity or entities to autoplace. |

### `take_screenshot(?player: PlayerIdentification, ?by_player: PlayerIdentification, ?surface: SurfaceIdentification, ?position: MapPosition, ?resolution: TilePosition, ?zoom: double, ?path: string, ?show_gui: boolean, ?show_entity_info: boolean, ?show_cursor_building_preview: boolean, ?anti_alias: boolean, ?hide_clouds: boolean, ?hide_fog: boolean, ?quality: int32, ?allow_in_replay: boolean, ?daytime: double, ?water_tick: uint32, ?force_render: boolean)`

Take a screenshot of the game and save it to the `script-output` folder, located in the game's [user
data directory](https://wiki.factorio.com/User_data_directory). The name of the image file can be
specified via the `path` parameter.  If Factorio is running headless, this function will do nothing.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification` | yes | The player to focus on. Defaults to the local player. |
| `by_player` | `PlayerIdentification` | yes | If defined, the screenshot will only be taken for this player. |
| `surface` | `SurfaceIdentification` | yes | If defined, the screenshot will be taken on this surface. |
| `position` | `MapPosition` | yes | If defined, the screenshot will be centered on this position. Otherwise, the screenshot will center on `player`. |
| `resolution` | `TilePosition` | yes | The maximum allowed resolution is 16384x16384 (8192x8192 when `anti_alias` is `true`), but the maximum recommended re... |
| `zoom` | `double` | yes | The map zoom to take the screenshot at. Defaults to `1`. |
| `path` | `string` | yes | The name of the image file. It should include a file extension indicating the desired format. Supports `.png`, `.jpg`... |
| `show_gui` | `boolean` | yes | Whether to include GUIs in the screenshot or not. Defaults to `false`. |
| `show_entity_info` | `boolean` | yes | Whether to include entity info ("Alt mode") or not. Defaults to `false`. |
| `show_cursor_building_preview` | `boolean` | yes | When `true` and when `player` is specified, the building preview for the item in the player's cursor will also be ren... |
| `anti_alias` | `boolean` | yes | Whether to render in double resolution and downscale the result (including GUI). Defaults to `false`. |
| `hide_clouds` | `boolean` | yes | If `true` cloud shadows on ground won't be rendered. Defaults to `false`. |
| `hide_fog` | `boolean` | yes | If `true` fog effect and foreground space dust effect won't be rendered. Defaults to `false`. |
| `quality` | `int32` | yes | The `.jpg` render quality as a percentage (from 0% to 100% inclusive), if used. A lower value means a more compressed... |
| `allow_in_replay` | `boolean` | yes | Whether to save the screenshot even during replay playback. Defaults to `false`. |
| `daytime` | `double` | yes | Overrides the current surface daytime for the duration of screenshot rendering. |
| `water_tick` | `uint32` | yes | Overrides the tick of water animation, if animated water is enabled. |
| `force_render` | `boolean` | yes | Screenshot requests are processed in between game update and render. The game may skip rendering (ie. drop frames) if... |

### `set_wait_for_screenshots_to_finish()`

Forces the screenshot saving system to wait until all queued screenshots have been written to disk.

### `take_technology_screenshot(?path: string, player: PlayerIdentification, ?selected_technology: TechnologyID, ?skip_disabled: boolean, ?quality: int32)`

Take a screenshot of the technology screen and save it to the `script-output` folder, located in the
game's [user data directory](https://wiki.factorio.com/User_data_directory). The name of the image
file can be specified via the `path` parameter.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `path` | `string` | yes | The name of the image file. It should include a file extension indicating the desired format. Supports `.png`, `.jpg`... |
| `player` | `PlayerIdentification` | no | The screenshot will be taken for this player. |
| `selected_technology` | `TechnologyID` | yes | The technology to highlight. |
| `skip_disabled` | `boolean` | yes | If `true`, disabled technologies will be skipped. Their successors will be attached to the disabled technology's pare... |
| `quality` | `int32` | yes | The `.jpg` render quality as a percentage (from 0% to 100% inclusive), if used. A lower value means a more compressed... |

### `remove_offline_players(?players: array[PlayerIdentification])`

Remove players who are currently not connected from the map.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `players` | `array[PlayerIdentification]` | yes | List of players to remove. If not specified, remove all offline players. |

### `force_crc()`

Force a CRC check. Tells all peers to calculate their current CRC, which are then compared to each
other. If a mismatch is detected, the game desyncs and some peers are forced to reconnect.

### `create_force(force: string) -> LuaForce`

Create a new force.  The game currently supports a maximum of 64 forces, including the three built-
in forces. This means that a maximum of 61 new forces may be created. Force names must be unique.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `string` | no | Name of the new force |

**Returns:**

- `LuaForce` — The force that was just created

### `merge_forces(source: ForceID, destination: ForceID)`

Marks two forces to be merged together. All players and entities in the source force will be
reassigned to the target force. The source force will then be destroyed. Importantly, this does not
merge technologies or bonuses, which are instead retained from the target force.  The three built-in
forces (player, enemy and neutral) can't be destroyed, meaning they can't be used as the source
argument to this function.  The source force is not removed until the end of the current tick, or if
called during the [on_forces_merging](runtime:on_forces_merging) or
[on_forces_merged](runtime:on_forces_merged) event, the end of the next tick.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `source` | `ForceID` | no | The force to remove. |
| `destination` | `ForceID` | no | The force to reassign all entities to. |

### `create_surface(name: string, ?settings: MapGenSettings) -> LuaSurface`

Create a new surface.  The game currently supports a maximum of 4 294 967 295 surfaces, including
the default surface. Surface names must be unique.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | Name of the new surface. |
| `settings` | `MapGenSettings` | yes | Map generation settings. |

**Returns:**

- `LuaSurface` — The surface that was just created.

### `server_save(?name: string)`

Instruct the server to save the map. Only actually saves when in multiplayer.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | yes | Save file name. If not specified, the currently running save is overwritten. If there is no current save, no save is ... |

### `auto_save(?name: string)`

Instruct the game to perform an auto-save.  Only the server will save in multiplayer. In single
player a standard auto-save is triggered.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | yes | The autosave name if any. Saves will be named _autosave-*name* when provided. |

### `delete_surface(surface: SurfaceIdentification) -> boolean`

Deletes the given surface and all entities on it if possible.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no | The surface to be deleted. Currently the primary surface (1, 'nauvis') cannot be deleted. |

**Returns:**

- `boolean` — If the surface was queued to be deleted.

### `disable_replay()`

Disables replay saving for the current save file. Once done there's no way to re-enable replay
saving for the save file without loading an old save.

### `print(message: LocalisedString, ?print_settings: PrintSettings)`

Print text to the chat console all players.  By default, messages that are identical to a message
sent in the last 60 ticks are not printed again.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `message` | `LocalisedString` | no |  |
| `print_settings` | `PrintSettings` | yes |  |

### `create_random_generator(?seed: uint32) -> LuaRandomGenerator`

Creates a deterministic standalone random generator with the given seed or if a seed is not provided
the initial map seed is used.  *Make sure* you actually want to use this over math.random(...) as
this provides entirely different functionality over math.random(...).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `seed` | `uint32` | yes |  |

**Returns:**

- `LuaRandomGenerator` — 

### `play_sound(sound_specification: PlaySoundSpecification)`

Play a sound for every player in the game.  The sound is not played if its location is not
[charted](runtime:LuaForce::chart) for that player.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sound_specification` | `PlaySoundSpecification` | no | The sound to play. |

### `kick_player(player: PlayerIdentification, ?reason: string)`

Kicks the given player from this multiplayer game. Does nothing if this is a single player game or
if the player running this isn't an admin.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification` | no | The player to kick. |
| `reason` | `string` | yes | The reason given if any. |

### `ban_player(player: PlayerIdentification | string, ?reason: string)`

Bans the given player from this multiplayer game. Does nothing if this is a single player game of if
the player running this isn't an admin.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification | string` | no | The player to ban. |
| `reason` | `string` | yes | The reason given if any. |

### `unban_player(player: PlayerIdentification | string)`

Unbans the given player from this multiplayer game. Does nothing if this is a single player game of
if the player running this isn't an admin.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification | string` | no | The player to unban. |

### `purge_player(player: PlayerIdentification)`

Purges the given players messages from the game. Does nothing if the player running this isn't an
admin.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification` | no | The player to purge. |

### `mute_player(player: PlayerIdentification)`

Mutes the given player. Does nothing if the player running this isn't an admin.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification` | no | The player to mute. |

### `unmute_player(player: PlayerIdentification)`

Unmutes the given player. Does nothing if the player running this isn't an admin.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification` | no | The player to unmute. |

### `is_multiplayer() -> boolean`

Whether the save is loaded as a multiplayer map.

**Returns:**

- `boolean` — 

### `get_map_exchange_string() -> string`

Gets the map exchange string for the map generation settings that were used to create this map.

**Returns:**

- `string` — 

### `get_player(player: uint32 | string) -> LuaPlayer`

Gets the given player or returns `nil` if no player is found.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `uint32 | string` | no | The player index or name. |

**Returns:**

- `LuaPlayer` — 

### `get_surface(surface: uint32 | string) -> LuaSurface`

Gets the given surface or returns `nil` if no surface is found.  This is a shortcut for
[LuaGameScript::surfaces](runtime:LuaGameScript::surfaces).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `uint32 | string` | no | The surface index or name. |

**Returns:**

- `LuaSurface` — 

### `create_profiler(?stopped: boolean) -> LuaProfiler`

Creates a [LuaProfiler](runtime:LuaProfiler), which is used for measuring script performance.
LuaProfiler cannot be serialized.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `stopped` | `boolean` | yes | Create the timer stopped |

**Returns:**

- `LuaProfiler` — 

### `create_inventory(size: uint16, ?gui_title: LocalisedString) -> LuaInventory`

Creates an inventory that is not owned by any game object.  It can be resized later with
[LuaInventory::resize](runtime:LuaInventory::resize).  Make sure to destroy it when you are done
with it using [LuaInventory::destroy](runtime:LuaInventory::destroy).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `size` | `uint16` | no | The number of slots the inventory initially has. |
| `gui_title` | `LocalisedString` | yes | The title of the GUI that is shown when this inventory is opened. |

**Returns:**

- `LuaInventory` — 

### `get_script_inventories(?mod: string) -> dict[string, array[LuaInventory]]`

Gets the inventories created through
[LuaGameScript::create_inventory](runtime:LuaGameScript::create_inventory).  Inventories created
through console commands will be owned by `"core"`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `mod` | `string` | yes | The mod whose inventories to get. If not provided all inventories are returned. |

**Returns:**

- `dict[string, array[LuaInventory]]` — A mapping of mod name to array of inventories owned by that mod.

### `reset_time_played()`

Resets the amount of time played for this map.

### `get_pollution_statistics(surface: SurfaceIdentification) -> LuaFlowStatistics`

The pollution statistics for this the given surface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no |  |

**Returns:**

- `LuaFlowStatistics` — 

### `get_vehicles(?unit_number: uint32, ?force: ForceID, ?surface: SurfaceIdentification, ?type: EntityID | array[EntityID], ?is_moving: boolean, ?has_passenger: boolean) -> array[LuaEntity]`

Returns vehicles in game.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `unit_number` | `uint32` | yes |  |
| `force` | `ForceID` | yes |  |
| `surface` | `SurfaceIdentification` | yes |  |
| `type` | `EntityID | array[EntityID]` | yes |  |
| `is_moving` | `boolean` | yes |  |
| `has_passenger` | `boolean` | yes |  |

**Returns:**

- `array[LuaEntity]` — 

### `get_entity_by_unit_number(unit_number: uint32) -> LuaEntity`

Returns entity with a specified unit number or nil if entity with such number was not found or
prototype does not have [EntityPrototypeFlags::get-by-unit-
number](prototype:EntityPrototypeFlags::get_by_unit_number) flag set.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `unit_number` | `uint32` | no |  |

**Returns:**

- `LuaEntity` — 
