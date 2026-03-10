# LuaPlayer

A player in the game. Pay attention that a player may or may not have a character, which is the
[LuaEntity](runtime:LuaEntity) of the little guy running around the world doing things.

## Attributes

### `physical_surface` — `LuaSurface` (read-only)

The surface this player's physical controller is on.

### `physical_surface_index` — `uint32` (read-only)

Unique ID associated with the surface this player's physical controller is currently on.

### `physical_position` — `MapPosition` (read-only)

The current position of this player's physical controller.

### `physical_vehicle` — `LuaEntity` (read-only) *(optional)*

The current vehicle of this player's physical controller.

### `character` — `LuaEntity` *(optional)*

The character attached to this player, if any. Returns `nil` when the player is disconnected (see
[LuaPlayer::connected](runtime:LuaPlayer::connected)).

### `cutscene_character` — `LuaEntity` (read-only) *(optional)*

When in a cutscene; the character this player would be using once the cutscene is over, if any.
Returns `nil` when the player is disconnected (see
[LuaPlayer::connected](runtime:LuaPlayer::connected)).

### `index` — `uint32` (read-only)

This player's index in [LuaGameScript::players](runtime:LuaGameScript::players) (unique ID). It is
assigned when a player is created, and remains so (even when the player is not
[connected](runtime:LuaPlayer::connected)) until the player is irreversibly
[removed](runtime:on_player_removed). Indexes of removed players can be reused.

### `gui` — `LuaGui` (read-only)

### `opened_self` — `boolean` (read-only)

`true` if the player opened itself. I.e. if they opened the character or god-controller GUI.

### `controller_type` — `defines.controllers` (read-only)

### `physical_controller_type` — `defines.controllers` (read-only)

The player's "physical" controller. When a player is in the remote controller, this specifies the
controller they will return to. When the player is not in the remote controller, this is equivalent
to [LuaPlayer::controller_type](runtime:LuaPlayer::controller_type).

### `stashed_controller_type` — `defines.controllers` (read-only) *(optional)*

The stashed controller type, if any. This is mainly useful when a player is in the map editor.

### `spidertron_remote_selection` — `array[LuaEntity]` *(optional)*

All SpiderVehicles currently selected by the player, if they are holding a spidertron remote.

### `zoom` — `double`

The current player controller's zoom level. Must be positive. The baseline zoom level is 1. Values
greater than 1 will zoom in closer to the world and values between 0 and 1 will zoom out away from
the world.  Writing values outside the current zoom limits is always valid, but read values will
always be clamped to the range defined by [LuaPlayer::zoom_limits](runtime:LuaPlayer::zoom_limits).

### `zoom_limits` — `ZoomLimits`

The player's current controller's zoom limits.  Reading this field creates a copy, so modifying the
returned table's fields directly will not alter the player's zoom limits. To change the zoom limits
for the player's current controller, set the entire field to the desired
[ZoomLimits](runtime:ZoomLimits) table.  Zoom limits are defined and remembered per controller type.
If you set the zoom limits of the character controller, then every time the player uses the
character controller, it will remember and use the zoom limits previously set. However, other
controller types will not use the character controller zoom limits; each controller type must have
its zoom limits defined separately.  To set the zoom limits of ANY controller type, not just the
currently active one, use [LuaPlayer::set_zoom_limits](runtime:LuaPlayer::set_zoom_limits).

### `centered_on` — `LuaEntity` *(optional)*

The entity being centered on in remote view.  When writing, the player will be switched to remote
view (if not already in it) and centered on the given entity.

### `game_view_settings` — `GameViewSettings`

The player's game view settings.

### `minimap_enabled` — `boolean`

`true` if the minimap is visible.

### `color` — `Color`

The color associated with the player. This will be used to tint the player's character as well as
their buildings and vehicles.

### `chat_color` — `Color`

The color used when this player talks in game.

### `name` — `string` (read-only)

The player's username.

### `tag` — `string`

The tag that is shown after the player in chat, on the map and above multiplayer selection
rectangles.

### `connected` — `boolean` (read-only)

`true` if the player is currently connected to the game.

### `admin` — `boolean`

`true` if the player is an admin.  Trying to change player admin status from the console when you
aren't an admin does nothing.

### `entity_copy_source` — `LuaEntity` (read-only) *(optional)*

The source entity used during entity settings copy-paste, if any.

### `afk_time` — `uint32` (read-only)

How many ticks since the last action of this player.

### `online_time` — `uint32` (read-only)

How many ticks did this player spend playing this save (all sessions combined).

### `last_online` — `uint32` (read-only)

At what tick this player was last online.

### `permission_group` — `LuaPermissionGroup` *(optional)*

The permission group this player is part of, if any.

### `mod_settings` — `LuaCustomTable` (read-only)

The current per-player settings for the this player, indexed by prototype name. Returns the same
structure as [LuaSettings::get_player_settings](runtime:LuaSettings::get_player_settings). This
table becomes invalid if its associated player does.  Even though this attribute is marked as read-
only, individual settings can be changed by overwriting their [ModSetting](runtime:ModSetting)
table. Mods can only change their own settings. Using the in-game console, all player settings can
be changed.

### `ticks_to_respawn` — `uint32` *(optional)*

The number of ticks until this player will respawn. `nil` if this player is not waiting to respawn.
Set to `nil` to immediately respawn the player.  Set to any positive value to trigger the respawn
state for this player.

### `display_resolution` — `DisplayResolution` (read-only)

The display resolution for this player.  During [on_player_created](runtime:on_player_created), this
attribute will always return a resolution of `{width=1920, height=1080}`. To get the actual
resolution, listen to the
[on_player_display_resolution_changed](runtime:on_player_display_resolution_changed) event raised
shortly afterwards.

### `display_scale` — `double` (read-only)

The display scale for this player.  During [on_player_created](runtime:on_player_created), this
attribute will always return a scale of `1`. To get the actual scale, listen to the
[on_player_display_scale_changed](runtime:on_player_display_scale_changed) event raised shortly
afterwards.

### `display_density_scale` — `double` (read-only)

The display density scale for this player. The display density scale is the factor of
[LuaPlayer::display_scale](runtime:LuaPlayer::display_scale) that is determined by the physical DPI
of the screen that Factorio is running on. In most cases, the default value is 1. If the player is
playing on a high-density display, this value may be 2 or greater.  During
[on_player_created](runtime:on_player_created), this attribute will always return a scale of `1`. To
get the actual scale, listen to the
[on_player_display_density_scale_changed](runtime:on_player_display_density_scale_changed) event
raised shortly afterwards.

### `locale` — `string` (read-only)

The active locale for this player.  During [on_player_created](runtime:on_player_created), this
attribute will be `en`. To get the actual value, listen to the
[on_player_locale_changed](runtime:on_player_locale_changed) event raised shortly afterwards.

### `blueprint_to_setup` — `LuaItemStack` (read-only)

The item stack containing a blueprint to be setup.

### `blueprints` — `array[LuaRecord]` (read-only)

Records contained in the player's blueprint library.

### `render_mode` — `defines.render_mode` (read-only)

The render mode of the player, like map or zoom to world.

### `input_method` — `defines.input_method` (read-only)

The input method of the player, mouse and keyboard or game controller

### `spectator` — `boolean`

If `true`, zoom-to-world noise effect will be disabled and environmental sounds will be based on
zoom-to-world view instead of position of player's character.

### `show_on_map` — `boolean`

If `true`, circle and name of given player is rendered on the map/chart.

### `remove_unfiltered_items` — `boolean`

If items not included in this map editor infinity inventory filters should be removed.

### `infinity_inventory_filters` — `array[InfinityInventoryFilter]`

The filters for this map editor infinity inventory settings.

### `auto_sort_main_inventory` — `boolean` (read-only)

If the main inventory will be auto sorted.

### `hand_location` — `ItemStackLocation` *(optional)*

The original location of the item in the cursor, marked with a hand. `nil` if the cursor stack is
empty. When writing, the specified inventory slot must be empty and the cursor stack must not be
empty.

### `cursor_stack_temporary` — `boolean`

Returns true if the current item stack in cursor will be destroyed after clearing the cursor.
Manually putting it into inventory still preserves the item. If the cursor stack is not one of the
supported types (blueprint, blueprint-book, deconstruction-planner, upgrade-planner), write
operation will be silently ignored.

### `undo_redo_stack` — `LuaUndoRedoStack` (read-only)

The undo and redo stack for this player.

### `drag_target` — `DragTarget` (read-only) *(optional)*

The wire drag target for this player, if any.

### `map_view_settings` — `?` (read) / `MapViewSettings` (write)

The player's map view settings. To write to this, use a table containing the fields that should be
changed.

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

### `set_ending_screen_data(message: LocalisedString, ?file: string)`

Setup the screen to be shown when the game is finished.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `message` | `LocalisedString` | no | Message to be shown. |
| `file` | `string` | yes | Path to image to be shown. |

### `print(message: LocalisedString, ?print_settings: PrintSettings)`

Print text to the chat console.  By default, messages that are identical to a message sent in the
last 60 ticks are not printed again.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `message` | `LocalisedString` | no |  |
| `print_settings` | `PrintSettings` | yes |  |

### `clear_console()`

Clear the chat console.

### `get_goal_description() -> LocalisedString`

Get the current goal description, as a localised string.

**Returns:**

- `LocalisedString` — 

### `set_goal_description(?text: LocalisedString, ?only_update: boolean)`

Set the text in the goal window (top left).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `text` | `LocalisedString` | yes | The text to display. Lines can be delimited with `\n`. Passing an empty string or omitting this parameter entirely wi... |
| `only_update` | `boolean` | yes | When `true`, won't play the "goal updated" sound. |

### `set_controller(type: defines.controllers, ?character: LuaEntity, ?waypoints: array[CutsceneWaypoint], ?start_position: MapPosition, ?start_zoom: double, ?final_transition_time: uint32, ?chart_mode_cutoff: double, ?position: MapPosition, ?surface: SurfaceIdentification)`

Set the controller type of the player.  Setting a player to
[defines.controllers.editor](runtime:defines.controllers.editor) auto promotes the player to admin
and enables cheat mode. Setting a player to
[defines.controllers.editor](runtime:defines.controllers.editor) also requires the calling player be
an admin.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `defines.controllers` | no | Which controller to use. |
| `character` | `LuaEntity` | yes | Entity to control. Mandatory when `type` is [defines.controllers.character](runtime:defines.controllers.character), i... |
| `waypoints` | `array[CutsceneWaypoint]` | yes | List of waypoints for the cutscene controller. This parameter is mandatory when `type` is [defines.controllers.cutsce... |
| `start_position` | `MapPosition` | yes | If specified and `type` is [defines.controllers.cutscene](runtime:defines.controllers.cutscene), the cutscene will st... |
| `start_zoom` | `double` | yes | If specified and `type` is [defines.controllers.cutscene](runtime:defines.controllers.cutscene), the cutscene will st... |
| `final_transition_time` | `uint32` | yes | If specified and `type` is [defines.controllers.cutscene](runtime:defines.controllers.cutscene), it is the time in ti... |
| `chart_mode_cutoff` | `double` | yes | If specified and `type` is [defines.controllers.cutscene](runtime:defines.controllers.cutscene), the game will switch... |
| `position` | `MapPosition` | yes | If specified and `type` is [defines.controllers.remote](runtime:defines.controllers.remote), the position the remote ... |
| `surface` | `SurfaceIdentification` | yes | If specified and `type` is [defines.controllers.remote](runtime:defines.controllers.remote), the surface the remote c... |

### `drag_wire(position: MapPosition) -> boolean`

Start/end wire dragging at the specified location, wire type is based on the cursor contents

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Position at which cursor was clicked. Used only to decide which side of arithmetic combinator, decider combinator or ... |

**Returns:**

- `boolean` — `true` if the action did something

### `disable_recipe_groups()`

Disable recipe groups.

### `enable_recipe_groups()`

Enable recipe groups.

### `disable_recipe_subgroups()`

Disable recipe subgroups.

### `enable_recipe_subgroups()`

Enable recipe subgroups.

### `print_entity_statistics(?entities: array[EntityWithQualityID])`

Print entity statistics to the player's console.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entities` | `array[EntityWithQualityID]` | yes | Entity prototypes to get statistics for. If not specified or empty, display statistics for all entities. |

### `print_robot_jobs()`

Print construction robot job counts to the player's console.

### `print_lua_object_statistics()`

Print LuaObject counts per mod.

### `unlock_achievement(name: string)`

Unlock the achievements of the given player. This has any effect only when this is the local player,
the achievement isn't unlocked so far and the achievement is of the type "achievement".

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | name of the achievement to unlock |

### `clear_cursor() -> boolean`

Invokes the "clear cursor" action on the player as if the user pressed it.

**Returns:**

- `boolean` — Whether the cursor is now empty.

### `create_character(?character: EntityWithQualityID) -> boolean`

Creates and attaches a character entity to this player.  The player must not have a character
already connected and must be online (see [LuaPlayer::connected](runtime:LuaPlayer::connected)).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `character` | `EntityWithQualityID` | yes | The character to create else the default is used. |

**Returns:**

- `boolean` — Whether the character was created.

### `add_alert(entity: LuaEntity, type: defines.alert_type)`

Adds an alert to this player for the given entity of the given alert type.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no |  |
| `type` | `defines.alert_type` | no |  |

### `add_custom_alert(entity: LuaEntity, icon: SignalID, message: LocalisedString, show_on_map: boolean)`

Adds a custom alert to this player.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | If the alert is clicked, the map will open at the position of this entity. |
| `icon` | `SignalID` | no |  |
| `message` | `LocalisedString` | no |  |
| `show_on_map` | `boolean` | no |  |

### `remove_alert(?entity: LuaEntity, ?prototype: EntityID, ?position: MapPosition, ?type: defines.alert_type, ?surface: SurfaceIdentification, ?icon: SignalID, ?message: LocalisedString)`

Removes all alerts matching the given filters or if an empty filters table is given all alerts are
removed.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | yes |  |
| `prototype` | `EntityID` | yes |  |
| `position` | `MapPosition` | yes |  |
| `type` | `defines.alert_type` | yes |  |
| `surface` | `SurfaceIdentification` | yes |  |
| `icon` | `SignalID` | yes |  |
| `message` | `LocalisedString` | yes |  |

### `get_alerts(?entity: LuaEntity, ?prototype: LuaEntityPrototype, ?position: MapPosition, ?type: defines.alert_type, ?surface: SurfaceIdentification) -> dict[uint32, dict[defines.alert_type, array[Alert]]]`

Get all alerts matching the given filters, or all alerts if no filters are given.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | yes |  |
| `prototype` | `LuaEntityPrototype` | yes |  |
| `position` | `MapPosition` | yes |  |
| `type` | `defines.alert_type` | yes |  |
| `surface` | `SurfaceIdentification` | yes |  |

**Returns:**

- `dict[uint32, dict[defines.alert_type, array[Alert]]]` — A mapping of surface index to an array of arrays of [alerts](runtime:Alert) indexed by the [alert type](runtime:defin...

### `mute_alert(alert_type: defines.alert_type) -> boolean`

Mutes alerts for the given alert category.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `alert_type` | `defines.alert_type` | no |  |

**Returns:**

- `boolean` — Whether the alert type was muted (false if it was already muted).

### `unmute_alert(alert_type: defines.alert_type) -> boolean`

Unmutes alerts for the given alert category.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `alert_type` | `defines.alert_type` | no |  |

**Returns:**

- `boolean` — Whether the alert type was unmuted (false if it was wasn't muted).

### `is_alert_muted(alert_type: defines.alert_type) -> boolean`

If the given alert type is currently muted.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `alert_type` | `defines.alert_type` | no |  |

**Returns:**

- `boolean` — 

### `enable_alert(alert_type: defines.alert_type) -> boolean`

Enables alerts for the given alert category.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `alert_type` | `defines.alert_type` | no |  |

**Returns:**

- `boolean` — Whether the alert type was enabled (false if it was already enabled).

### `disable_alert(alert_type: defines.alert_type) -> boolean`

Disables alerts for the given alert category.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `alert_type` | `defines.alert_type` | no |  |

**Returns:**

- `boolean` — Whether the alert type was disabled (false if it was already disabled).

### `is_alert_enabled(alert_type: defines.alert_type) -> boolean`

If the given alert type is currently enabled.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `alert_type` | `defines.alert_type` | no |  |

**Returns:**

- `boolean` — 

### `add_pin(?label: string, ?preview_distance: uint16, ?always_visible: boolean, ?entity: LuaEntity, ?player: PlayerIdentification, ?surface: SurfaceIdentification, ?position: MapPosition)`

Adds a pin to this player for the given pin specification. Either entity, player, or surface and
position must be defined.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `label` | `string` | yes |  |
| `preview_distance` | `uint16` | yes | Defaults to `16`. |
| `always_visible` | `boolean` | yes | Defaults to `true`. |
| `entity` | `LuaEntity` | yes | The entity to pin. |
| `player` | `PlayerIdentification` | yes | The player to pin. |
| `surface` | `SurfaceIdentification` | yes | The surface to create the pin on. |
| `position` | `MapPosition` | yes | Where to create the pin. Required when surface is defined. |

### `pipette_entity(entity: EntityWithQualityID, ?allow_ghost: boolean) -> boolean`

Invokes the "smart pipette" action on the player as if the user pressed it. This method is
deprecated in favor of [LuaPlayer::pipette](runtime:LuaPlayer::pipette) and should not be used.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `EntityWithQualityID` | no |  |
| `allow_ghost` | `boolean` | yes | Defaults to false. |

**Returns:**

- `boolean` — Whether the smart pipette found something to place.

### `pipette(id: PipetteID, ?quality: QualityID, ?allow_ghost: boolean) -> boolean`

Invokes the "smart pipette" action on the player as if the user pressed it.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `PipetteID` | no |  |
| `quality` | `QualityID` | yes |  |
| `allow_ghost` | `boolean` | yes | Defaults to false. |

**Returns:**

- `boolean` — Whether the smart pipette found something to put into the cursor.

### `can_build_from_cursor(position: MapPosition, ?direction: defines.direction, ?flip_horizontal: boolean, ?flip_vertical: boolean, ?build_mode: defines.build_mode, ?terrain_building_size: uint32, ?skip_fog_of_war: boolean) -> boolean`

Checks if this player can build what ever is in the cursor on the surface the player is on.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Where the entity would be placed |
| `direction` | `defines.direction` | yes | Direction the entity would be placed |
| `flip_horizontal` | `boolean` | yes | Whether to flip the blueprint horizontally. Defaults to `false`. |
| `flip_vertical` | `boolean` | yes | Whether to flip the blueprint vertically. Defaults to `false`. |
| `build_mode` | `defines.build_mode` | yes | Which build mode should be used instead of normal build. Defaults to `defines.build_mode.normal`. |
| `terrain_building_size` | `uint32` | yes | The size for building terrain if building terrain. Defaults to `2`. |
| `skip_fog_of_war` | `boolean` | yes | If chunks covered by fog-of-war are skipped. Defaults to `false`. |

**Returns:**

- `boolean` — 

### `build_from_cursor(position: MapPosition, ?direction: defines.direction, ?mirror: boolean, ?flip_horizontal: boolean, ?flip_vertical: boolean, ?build_mode: defines.build_mode, ?terrain_building_size: uint32, ?skip_fog_of_war: boolean)`

Builds whatever is in the cursor on the surface the player is on. The cursor stack will
automatically be reduced as if the player built normally.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Where the entity would be placed |
| `direction` | `defines.direction` | yes | Direction the entity would be placed |
| `mirror` | `boolean` | yes | Whether to mirror the entity |
| `flip_horizontal` | `boolean` | yes | Whether to flip the blueprint horizontally. Defaults to `false`. |
| `flip_vertical` | `boolean` | yes | Whether to flip the blueprint vertically. Defaults to `false`. |
| `build_mode` | `defines.build_mode` | yes | Which build mode should be used instead of normal build. Defaults to `defines.build_mode.normal`. |
| `terrain_building_size` | `uint32` | yes | The size for building terrain if building terrain. Defaults to `2`. |
| `skip_fog_of_war` | `boolean` | yes | If chunks covered by fog-of-war are skipped. Defaults to `false`. |

### `clear_inventory_highlights()`

Clears the blinking of the inventory based on insertion of items

### `use_from_cursor(position: MapPosition)`

Uses the current item in the cursor if it's a capsule or does nothing if not.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | Where the item would be used. |

### `play_sound(sound_specification: PlaySoundSpecification)`

Play a sound for this player.  The sound is not played if its location is not
[charted](runtime:LuaForce::chart) for this player.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sound_specification` | `PlaySoundSpecification` | no | The sound to play. |

### `get_associated_characters() -> array[LuaEntity]`

The characters associated with this player.  The array will always be empty when the player is
disconnected (see [LuaPlayer::connected](runtime:LuaPlayer::connected)) regardless of there being
associated characters.  Characters associated with this player will be logged off when this player
disconnects but are not controlled by any player.

**Returns:**

- `array[LuaEntity]` — 

### `associate_character(character: LuaEntity)`

Associates a character with this player.  The character must not be connected to any controller.  If
this player is currently disconnected (see [LuaPlayer::connected](runtime:LuaPlayer::connected)) the
character will be immediately "logged off".  See
[LuaPlayer::get_associated_characters](runtime:LuaPlayer::get_associated_characters) for more
information.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `character` | `LuaEntity` | no | The character entity. |

### `disassociate_character(character: LuaEntity)`

Disassociates a character from this player. This is functionally the same as setting
[LuaEntity::associated_player](runtime:LuaEntity::associated_player) to `nil`.  See
[LuaPlayer::get_associated_characters](runtime:LuaPlayer::get_associated_characters) for more
information.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `character` | `LuaEntity` | no | The character entity |

### `swap_characters(player: PlayerIdentification) -> boolean`

Swaps this player's character with another player's character.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player` | `PlayerIdentification` | no | The player to swap characters with. |

**Returns:**

- `boolean` — `true` if the swap was successful.

### `create_local_flying_text(text: LocalisedString, ?position: MapPosition, ?surface: SurfaceIdentification, ?create_at_cursor: boolean, ?color: Color, ?time_to_live: uint32, ?speed: double)`

Spawn flying text that is only visible to this player. Either `position` or `create_at_cursor` are
required. When `create_at_cursor` is `true`, all parameters other than `text` are ignored.  If no
custom `speed` is set and the text is longer than 25 characters, its `time_to_live` and `speed` are
dynamically adjusted to give the player more time to read it.  Local flying text is not saved, which
means it will disappear after a save/load-cycle.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `text` | `LocalisedString` | no | The flying text to show. |
| `position` | `MapPosition` | yes | The location on the map at which to show the flying text. |
| `surface` | `SurfaceIdentification` | yes | The surface which this text will be shown on. Defaults to player surface. |
| `create_at_cursor` | `boolean` | yes | If `true`, the flying text is created at the player's cursor. Defaults to `false`. |
| `color` | `Color` | yes | The color of the flying text. Defaults to white text. |
| `time_to_live` | `uint32` | yes | The amount of ticks that the flying text will be shown for. Defaults to `80`. |
| `speed` | `double` | yes | The speed at which the text rises upwards in tiles/second. Can't be a negative value. |

### `clear_local_flying_texts()`

Clear any active flying texts for this player.

### `get_quick_bar_slot(index: uint32) -> ItemFilter`

Gets the quick bar filter for the given slot or `nil`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The slot index. 1 for the first slot of page one, 2 for slot two of page one, 11 for the first slot of page 2, etc. |

**Returns:**

- `ItemFilter` — 

### `set_quick_bar_slot(index: uint32, filter: LuaItemStack | ItemWithQualityID | nil)`

Sets the quick bar filter for the given slot. If a [LuaItemStack](runtime:LuaItemStack) is provided,
the slot will be set to that particular item instance if it has extra data, for example a specific
blueprint or spidertron remote. Otherwise, it will be set to all items of that prototype, for
example iron plates.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The slot index. 1 for the first slot of page one, 2 for slot two of page one, 11 for the first slot of page 2, etc. |
| `filter` | `LuaItemStack | ItemWithQualityID | nil` | no | The filter or `nil` to clear it. |

### `get_active_quick_bar_page(index: uint32) -> uint8`

Gets which quick bar page is being used for the given screen page or `nil` if not known.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The screen page. Index 1 is the top row in the gui. Index can go beyond the visible number of bars on the screen to a... |

**Returns:**

- `uint8` — 

### `set_active_quick_bar_page(screen_index: uint32, page_index: uint32)`

Sets which quick bar page is being used for the given screen page.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `screen_index` | `uint32` | no | The screen page. Index 1 is the top row in the gui. Index can go beyond the visible number of bars on the screen to a... |
| `page_index` | `uint32` | no | The new quick bar page. |

### `jump_to_cutscene_waypoint(waypoint_index: uint32)`

Jump to the specified cutscene waypoint. Only works when the player is viewing a cutscene.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `waypoint_index` | `uint32` | no |  |

### `exit_cutscene()`

Exit the current cutscene. Errors if not in a cutscene.

### `exit_remote_view()`

Exit remote view if possible. Exiting will fail if the player is in a rocket or in a platform.

### `is_shortcut_toggled(prototype_name: string) -> boolean`

Is a custom Lua shortcut currently toggled?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `prototype_name` | `string` | no | Prototype name of the custom shortcut. |

**Returns:**

- `boolean` — 

### `is_shortcut_available(prototype_name: string) -> boolean`

Is a custom Lua shortcut currently available?

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `prototype_name` | `string` | no | Prototype name of the custom shortcut. |

**Returns:**

- `boolean` — 

### `set_shortcut_toggled(prototype_name: string, toggled: boolean)`

Toggle or untoggle a custom Lua shortcut

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `prototype_name` | `string` | no | Prototype name of the custom shortcut. |
| `toggled` | `boolean` | no |  |

### `set_shortcut_available(prototype_name: string, available: boolean)`

Make a custom Lua shortcut available or unavailable.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `prototype_name` | `string` | no | Prototype name of the custom shortcut. |
| `available` | `boolean` | no |  |

### `connect_to_server(address: string, ?name: LocalisedString, ?description: LocalisedString, ?password: string)`

Asks the player if they would like to connect to the given server.  This only does anything when
used on a multiplayer peer. Single player and server hosts will ignore the prompt.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `address` | `string` | no | The server (address:port) if port is not given the default Factorio port is used. |
| `name` | `LocalisedString` | yes | The name of the server. |
| `description` | `LocalisedString` | yes |  |
| `password` | `string` | yes | The password if different from the one used to join this game. Note, if the current password is not empty but the one... |

### `toggle_map_editor()`

Toggles this player into or out of the map editor. Does nothing if this player isn't an admin or if
the player doesn't have permission to use the map editor.

### `request_translation(localised_string: LocalisedString) -> uint32`

Requests a translation for the given localised string. If the request is successful, the
[on_string_translated](runtime:on_string_translated) event will be fired with the results.  Does
nothing if this player is not connected (see [LuaPlayer::connected](runtime:LuaPlayer::connected)).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `localised_string` | `LocalisedString` | no |  |

**Returns:**

- `uint32` — The unique ID for the requested translation.

### `request_translations(localised_strings: array[LocalisedString]) -> array[uint32]`

Requests translation for the given set of localised strings. If the request is successful, a
[on_string_translated](runtime:on_string_translated) event will be fired for each string with the
results.  Does nothing if this player is not connected (see
[LuaPlayer::connected](runtime:LuaPlayer::connected)).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `localised_strings` | `array[LocalisedString]` | no |  |

**Returns:**

- `array[uint32]` — The unique IDs for the requested translations.

### `get_infinity_inventory_filter(index: uint32) -> InfinityInventoryFilter`

Gets the filter for this map editor infinity filters at the given index or `nil` if the filter index
doesn't exist or is empty.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index to get. |

**Returns:**

- `InfinityInventoryFilter` — 

### `set_infinity_inventory_filter(index: uint32, filter: InfinityInventoryFilter | nil)`

Sets the filter for this map editor infinity filters at the given index.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index to set. |
| `filter` | `InfinityInventoryFilter | nil` | no | The new filter or `nil` to clear the filter. |

### `clear_recipe_notifications()`

Clears all recipe notifications for this player.

### `add_recipe_notification(recipe: RecipeID)`

Adds the given recipe to the list of recipe notifications for this player.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `recipe` | `RecipeID` | no | Recipe to add. |

### `clear_recipe_notification(recipe: RecipeID)`

Clears the given recipe from the list of recipe notifications for this player.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `recipe` | `RecipeID` | no | Recipe to clear. |

### `get_recipe_notifications() -> array[LuaRecipePrototype]`

Get all recipes that currently have recipe notifications for this player.

**Returns:**

- `array[LuaRecipePrototype]` — 

### `add_to_clipboard(blueprint: LuaItemStack)`

Adds the given blueprint to this player's clipboard queue.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `blueprint` | `LuaItemStack` | no | The blueprint to add. |

### `activate_paste()`

Gets a copy of the currently selected blueprint in the clipboard queue into the player's cursor, as
if the player activated Paste.

### `start_selection(position: MapPosition, selection_mode: defines.selection_mode)`

Starts selection with selection tool from the specified position. Does nothing if the player's
cursor is not a selection tool.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `position` | `MapPosition` | no | The position to start selection from. |
| `selection_mode` | `defines.selection_mode` | no | The type of selection to start. |

### `clear_selection()`

Clears the player's selection tool selection position.

### `enter_space_platform(space_platform: LuaSpacePlatform) -> boolean`

Enters the given space platform if possible.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `space_platform` | `LuaSpacePlatform` | no |  |

**Returns:**

- `boolean` — If the player entered the platform.

### `leave_space_platform()`

Ejects this player from the current space platform if in a platform. The player is left on the
platform at the position of the hub.

### `land_on_planet() -> boolean`

Ejects this player from the current space platform and lands on the current planet.

**Returns:**

- `boolean` — If the player successfully landed on the planet.

### `set_zoom_limits(controller_type: defines.controllers, zoom_limits: ZoomLimits)`

Sets the zoom limits for a specific controller type. To reset a controller's zoom limits to default,
pass an empty table for `zoom_limits`.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `controller_type` | `defines.controllers` | no | The type of the controller to set the zoom limits for. |
| `zoom_limits` | `ZoomLimits` | no | The new zoom limits. See [LuaPlayer::zoom_limits](runtime:LuaPlayer::zoom_limits) for usage information. |
