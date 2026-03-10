# LuaBurner

A reference to the burner energy source owned by a specific [LuaEntity](runtime:LuaEntity) or
[LuaEquipment](runtime:LuaEquipment).

## Attributes

### `owner` — `LuaEntity | LuaEquipment` (read-only)

The owner of this burner energy source

### `inventory` — `LuaInventory` (read-only)

The fuel inventory.

### `burnt_result_inventory` — `LuaInventory` (read-only)

The burnt result inventory.

### `heat` — `double`

The current heat (energy) stored in this burner.

### `heat_capacity` — `double` (read-only)

The maximum heat (maximum energy) that this burner can store.

### `remaining_burning_fuel` — `double`

The amount of energy left in the currently-burning fuel item.  Writing to this will silently do
nothing if there's no [LuaBurner::currently_burning](runtime:LuaBurner::currently_burning) set.

### `currently_burning` — `ItemIDAndQualityIDPair` (read) / `ItemWithQualityID` (write) *(optional)*

The currently burning item. Writing `nil` will void the currently burning item without producing a
[LuaBurner::burnt_result](runtime:LuaBurner::burnt_result).  Writing to this automatically handles
correcting [LuaBurner::remaining_burning_fuel](runtime:LuaBurner::remaining_burning_fuel).

### `fuel_categories` — `dict[string, True]` (read-only)

The fuel categories this burner uses.  The value in the dictionary is meaningless and exists just to
allow for easy lookup.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
