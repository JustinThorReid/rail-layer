# LuaShortcutPrototype

Prototype of a shortcut.

## Attributes

### `action` — `string` (read-only)

### `item_to_spawn` — `LuaItemPrototype` (read-only) *(optional)*

The item to create when this shortcut is used, if any.

### `technology_to_unlock` — `LuaTechnologyPrototype` (read-only) *(optional)*

The technology that needs to be researched once (in any save) for this shortcut to be unlocked (in
all saves).

### `toggleable` — `boolean` (read-only)

### `associated_control_input` — `string` (read-only) *(optional)*

The control input that is associated with this shortcut, if any.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
