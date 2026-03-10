# LuaEquipment

An item in a [LuaEquipmentGrid](runtime:LuaEquipmentGrid), for example a fusion reactor placed in
one's power armor.  An equipment reference becomes invalid once the equipment is removed or the
equipment grid it resides in is destroyed.

## Attributes

### `name` — `string` (read-only)

Name of this equipment.

### `ghost_name` — `string` (read-only)

Name of the equipment contained in this ghost

### `type` — `string` (read-only)

Type of this equipment.

### `ghost_type` — `string` (read-only)

Type of the equipment contained in this ghost.

### `quality` — `LuaQualityPrototype` (read-only)

Quality of this equipment.

### `position` — `EquipmentPosition` (read-only)

Position of this equipment in the equipment grid.

### `shape` — `{height: uint32, width: uint32}` (read-only)

Shape of this equipment.

### `shield` — `double`

Current shield value of the equipment. Can't be set higher than
[LuaEquipment::max_shield](runtime:LuaEquipment::max_shield).  Trying to write this value on non-
shield equipment will throw an error.

### `max_shield` — `double` (read-only)

Maximum shield value. `0` if this equipment doesn't have a shield.

### `max_solar_power` — `double` (read-only)

Maximum energy per tick crated by this equipment on the current surface. Actual generated energy
varies depending on the daylight levels.

### `inventory_bonus` — `uint32` (read-only)

Inventory size bonus.

### `movement_bonus` — `double` (read-only)

Movement speed bonus.

### `generator_power` — `double` (read-only)

Energy generated per tick.

### `energy` — `double`

Current available energy.

### `max_energy` — `double` (read-only)

Maximum amount of energy that can be stored in this equipment.

### `prototype` — `LuaEquipmentPrototype` (read-only)

### `ghost_prototype` — `LuaEquipmentPrototype` (read-only)

The prototype of the equipment contained in this ghost.

### `burner` — `LuaBurner` (read-only) *(optional)*

The burner energy source for this equipment, if any.

### `to_be_removed` — `boolean` (read-only)

If this equipment is marked to be removed.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
