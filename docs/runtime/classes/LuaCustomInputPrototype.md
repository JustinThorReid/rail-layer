# LuaCustomInputPrototype

Prototype of a custom input.

## Attributes

### `event_id` — `defines.events` (read-only)

Event identifier associated with this custom input.

### `key_sequence` — `string` (read-only)

The default key sequence for this custom input.

### `alternative_key_sequence` — `string` (read-only) *(optional)*

The default alternative key sequence for this custom input, if any

### `controller_key_sequence` — `string` (read-only) *(optional)*

The default controller key sequence for this custom input, if any

### `controller_alternative_key_sequence` — `string` (read-only) *(optional)*

The default controller alternative key sequence for this custom input, if any

### `linked_game_control` — `LinkedGameControl` (read-only) *(optional)*

The linked game control name, if any.

### `consuming` — `'none' | 'game-only'` (read-only)

The consuming type.

### `action` — `string` (read-only)

The action that happens when this custom input is triggered.

### `enabled` — `boolean` (read-only)

Whether this custom input is enabled. Disabled custom inputs exist but are not used by the game.

### `enabled_while_spectating` — `boolean` (read-only)

Whether this custom input is enabled while using the spectator controller.

### `enabled_while_in_cutscene` — `boolean` (read-only)

Whether this custom input is enabled while using the cutscene controller.

### `include_selected_prototype` — `boolean` (read-only)

Whether this custom input will include the selected prototype (if any) when triggered.

### `item_to_spawn` — `LuaItemPrototype` (read-only) *(optional)*

The item that gets spawned when this custom input is fired, if any.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
