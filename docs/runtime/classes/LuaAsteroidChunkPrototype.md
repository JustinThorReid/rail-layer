# LuaAsteroidChunkPrototype

Prototype of an asteroid chunk.

## Attributes

### `mineable_properties` — `MineableProperties` (read-only)

### `hide_from_signal_gui` — `boolean` (read-only)

### `item_signal_alias` — `LuaItemPrototype` (read-only) *(optional)*

### `factoriopedia_alternative` — `LuaAsteroidChunkPrototype` (read-only) *(optional)*

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### `dying_trigger_effect` — `array[TriggerEffectItem]` (read-only) *(optional)*

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
