# LuaCustomChartTag

A custom tag that shows on the map view.

## Attributes

### `icon` — `SignalID` *(optional)*

This tag's icon, if it has one. Writing `nil` removes it.

### `last_user` — `LuaPlayer` (read) / `PlayerIdentification` (write) *(optional)*

The player who last edited this tag.

### `position` — `MapPosition`

The position of this tag.

### `text` — `string`

### `tag_number` — `uint32` (read-only)

The unique ID for this tag on this force.

### `force` — `LuaForce` (read-only)

The force this tag belongs to.

### `surface` — `LuaSurface`

The surface this tag belongs to.

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

### `destroy()`

Destroys this tag.
