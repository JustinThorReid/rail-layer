# LuaBootstrap

Entry point for registering event handlers. It is accessible through the global object named
`script`.

## Attributes

### `mod_name` — `string` (read-only)

The name of the mod from the environment this is used in.

### `level` — `{campaign_name: string, is_simulation: boolean, is_tutorial: boolean, level_name: string, mod_name: string}` (read-only)

Information about the currently running scenario/campaign/tutorial.

### `active_mods` — `dict[string, string]` (read-only)

A dictionary listing the names of all currently active mods and mapping them to their version.

### `feature_flags` — `{expansion_shaders: boolean, freezing: boolean, quality: boolean, rail_bridges: boolean, segmented_units: boolean, space_travel: boolean, spoiling: boolean}` (read-only)

A dictionary of feature flags mapping to whether they are enabled.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

## Methods

### `on_init(handler: function() | nil)`

Register a function to be run on mod initialization.  This is only called when a new save game is
created or when a save file is loaded that previously didn't contain the mod. During it, the mod
gets the chance to set up initial values that it will use for its lifetime. It has full access to
[LuaGameScript](runtime:LuaGameScript) and the [storage](runtime:storage) table and can change
anything about them that it deems appropriate. No other events will be raised for the mod until it
has finished this step.  For more context, refer to the [Data Lifecycle](runtime:data-lifecycle)
page.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `handler` | `function() | nil` | no | The handler for this event. Passing `nil` will unregister it. |

### `on_load(handler: function() | nil)`

Register a function to be run on save load. This is only called for mods that have been part of the
save previously, or for players connecting to a running multiplayer session.  It gives the mod the
opportunity to rectify potential differences in local state introduced by the save/load cycle. Doing
anything other than the following three will lead to desyncs, breaking multiplayer and replay
functionality. Access to [LuaGameScript](runtime:LuaGameScript) is not available. The
[storage](runtime:storage) table can be accessed and is safe to read from, but not write to, as
doing so will lead to an error.  The only legitimate uses of this event are these:  - Re-setup
[metatables](https://www.lua.org/pil/13.html) as they are not persisted through the save/load cycle.
- Re-setup conditional event handlers, meaning subscribing to an event only when some condition is
met to save processing time.  - Create local references to data stored in the
[storage](runtime:storage) table.  For all other purposes,
[LuaBootstrap::on_init](runtime:LuaBootstrap::on_init),
[LuaBootstrap::on_configuration_changed](runtime:LuaBootstrap::on_configuration_changed) or
[migrations](runtime:migrations) should be used instead.  For more context, refer to the [Data
Lifecycle](runtime:data-lifecycle) page.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `handler` | `function() | nil` | no | The handler for this event. Passing `nil` will unregister it. |

### `on_configuration_changed(handler: function(ConfigurationChangedData) | nil)`

Register a function to be run when mod configuration changes.  This is called when the game version
or any mod version changed, when any mod was added or removed, when a startup setting has changed,
when any prototypes have been added or removed, or when a migration was applied. It allows the mod
to make any changes it deems appropriate to both the data structures in its
[storage](runtime:storage) table or to the game state through
[LuaGameScript](runtime:LuaGameScript).  For more context, refer to the [Data
Lifecycle](runtime:data-lifecycle) page.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `handler` | `function(ConfigurationChangedData) | nil` | no | The handler for this event. Passing `nil` will unregister it. |

### `on_event(event: LuaEventType | array[LuaEventType], handler: function(EventData) | nil, ?filters: EventFilter)`

Register a handler to run on the specified event(s). Each mod can only register once for every
event, as any additional registration will overwrite the previous one. This holds true even if
different filters are used for subsequent registrations.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `event` | `LuaEventType | array[LuaEventType]` | no | The event(s) or custom-input to invoke the handler on. |
| `handler` | `function(EventData) | nil` | no | The handler for this event. Passing `nil` will unregister it. |
| `filters` | `EventFilter` | yes | The filters for this event. Can only be used when registering for individual events. |

### `on_nth_tick(tick: uint32 | array[uint32] | nil, handler: function(NthTickEventData) | nil)`

Register a handler to run every nth-tick(s). When the game is on tick 0 it will trigger all
registered handlers.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tick` | `uint32 | array[uint32] | nil` | no | The nth-tick(s) to invoke the handler on. Passing `nil` as the only parameter will unregister all nth-tick handlers. |
| `handler` | `function(NthTickEventData) | nil` | no | The handler to run. Passing `nil` will unregister it for the provided nth-tick(s). |

### `register_on_object_destroyed(object: RegistrationTarget) -> (uint64, uint64, defines.target_type)`

Registers an object so that after it's destroyed, [on_object_destroyed](runtime:on_object_destroyed)
is called.  Once an object is registered, it stays registered until it is actually destroyed, even
through save/load cycles. The registration is global across all mods, meaning once one mod registers
an object, all mods listening to [on_object_destroyed](runtime:on_object_destroyed) will receive the
event when it is destroyed. Registering the same object multiple times will still only fire the
destruction event once, and will return the same registration number.  Depending on when a given
object is destroyed, [on_object_destroyed](runtime:on_object_destroyed) will either be fired at the
end of the current tick or at the end of the next tick.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `object` | `RegistrationTarget` | no | The object to register. |

**Returns:**

- `uint64` — The registration number. It is used to identify the object in the [on_object_destroyed](runtime:on_object_destroyed) ...

- `uint64` — The [useful identifier](runtime:RegistrationTarget) of the object if it has one. This identifier is specific to the o...

- `defines.target_type` — Type of the target object.

### `register_metatable(name: string, metatable: table)`

Register a metatable to have linkage recorded and restored when saving/loading.  The metatable
itself will not be saved. Instead, only the linkage to a registered metatable is saved, and the
metatable registered under that name will be used when loading the table.  `register_metatable()`
can not be used in the console, in event listeners or during a `remote.call()`.  The metatable first
needs to be defined in the mod's root scope, then registered using this method. From then on, it
will be properly restored for tables in [storage](runtime:storage).  ``` local metatable = {
__index = function(key)     return "no value for key " .. key   end }
script.register_metatable("my_metatable", metatable) ```  This previously defined `metatable` can
then be set on any table as usual:  ``` local table = {key="value"} setmetatable(table, metatable)
```

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | The name of this metatable. Names must be unique per mod. |
| `metatable` | `table` | no | The metatable to register. |

### `generate_event_name() -> defines.events`

Generate a new, unique event ID that can be used to raise custom events with
[LuaBootstrap::raise_event](runtime:LuaBootstrap::raise_event).

**Returns:**

- `defines.events` — The newly generated event ID. This will be a new value that does not correspond to any named entry in defines.events.

### `get_event_id(event: LuaEventType) -> defines.events`

Converts LuaEventType into related value of defines.events. Value will be provided also if event was
not given a constant inside of defines.events.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `event` | `LuaEventType` | no |  |

**Returns:**

- `defines.events` — 

### `get_event_handler(event: LuaEventType) -> function(EventData)`

Find the event handler for an event.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `event` | `LuaEventType` | no | The event identifier to get a handler for. |

**Returns:**

- `function(EventData)` — Reference to the function currently registered as the handler, if it was found.

### `get_event_order() -> string`

Gets the mod event order as a string.

**Returns:**

- `string` — 

### `set_event_filter(event: LuaEventType, ?filters: EventFilter)`

Sets the filters for the given event. The filters are only retained when set after the actual event
registration, because registering for an event with different or no filters will overwrite
previously set ones.  Limit the [on_marked_for_deconstruction](runtime:on_marked_for_deconstruction)
event to only be received when a non-ghost entity is marked for deconstruction.  ```
script.set_event_filter(defines.events.on_marked_for_deconstruction, {{filter = "ghost", invert =
true}}) ```  Limit the [on_built_entity](runtime:on_built_entity) event to only be received when
either a `unit` or a `unit-spawner` is built.  ```
script.set_event_filter(defines.events.on_built_entity, {{filter = "type", type = "unit"}, {filter =
"type", type = "unit-spawner"}}) ```  Limit the [on_entity_damaged](runtime:on_entity_damaged) event
to only be received when a `rail` is damaged by an `acid` attack.  ```
script.set_event_filter(defines.events.on_entity_damaged, {{filter = "rail"}, {filter = "damage-
type", type = "acid", mode = "and"}}) ```

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `event` | `LuaEventType` | no | ID of the event to filter. |
| `filters` | `EventFilter` | yes | The filters or `nil` to clear them. |

### `get_event_filter(event: LuaEventType) -> EventFilter`

Gets the filters for the given event.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `event` | `LuaEventType` | no | ID of the event to get. |

**Returns:**

- `EventFilter` — The filters or `nil` if none are defined.

### `raise_event(event: LuaEventType, data: table)`

Raise an event. Only events generated with
[LuaBootstrap::generate_event_name](runtime:LuaBootstrap::generate_event_name) and the following can
be raised:

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `event` | `LuaEventType` | no | ID or name of the event to raise. |
| `data` | `table` | no | Table with extra data that will be passed to the event handler. Any invalid LuaObjects will silently stop the event f... |

### `raise_console_chat(player_index: uint32, message: string)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player doing the chatting. |
| `message` | `string` | no | The chat message to send. |

### `raise_player_crafted_item(item_stack: LuaItemStack, player_index: uint32, recipe: RecipeID)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `item_stack` | `LuaItemStack` | no | The item that has been crafted. |
| `player_index` | `uint32` | no | The player doing the crafting. |
| `recipe` | `RecipeID` | no | The recipe used to craft this item. |

### `raise_player_fast_transferred(player_index: uint32, entity: LuaEntity, from_player: boolean, is_split: boolean)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player transferred from or to. |
| `entity` | `LuaEntity` | no | The entity transferred from or to. |
| `from_player` | `boolean` | no | Whether the transfer was from player to entity. If `false`, the transfer was from entity to player. |
| `is_split` | `boolean` | no | Whether the transfer was a split action (half stack). |

### `raise_biter_base_built(entity: LuaEntity)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that was built. |

### `raise_market_item_purchased(player_index: uint32, market: LuaEntity, offer_index: uint32, count: uint32)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | no | The player who did the purchasing. |
| `market` | `LuaEntity` | no | The market entity. |
| `offer_index` | `uint32` | no | The index of the offer purchased. |
| `count` | `uint32` | no | The amount of offers purchased. |

### `raise_script_built(entity: LuaEntity)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that has been built. |

### `raise_script_destroy(entity: LuaEntity)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that was destroyed. |

### `raise_script_revive(entity: LuaEntity, ?tags: Tags)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that was revived. |
| `tags` | `Tags` | yes | The tags associated with this entity, if any. |

### `raise_script_teleported(entity: LuaEntity, old_surface_index: uint8, old_position: MapPosition)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity` | `LuaEntity` | no | The entity that was teleported. |
| `old_surface_index` | `uint8` | no | The entity's surface before the teleportation. |
| `old_position` | `MapPosition` | no | The entity's position before the teleportation. |

### `raise_script_set_tiles(surface_index: uint32, tiles: array[Tile])`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface_index` | `uint32` | no | The surface whose tiles have been changed. |
| `tiles` | `array[Tile]` | no | The tiles that have been changed. |

### `raise_script_destroy_segmented_unit(segmented_unit: LuaSegmentedUnit)`

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `segmented_unit` | `LuaSegmentedUnit` | no | The segmented unit that was destroyed. |
