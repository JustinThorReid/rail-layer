# LuaTurretControlBehavior

Control behavior for turrets.

## Attributes

### `set_priority_list` — `boolean`

`true` if the turret's target priority list will be determined from the signals on the circuit
network.

### `set_ignore_unlisted_targets` — `boolean`

`true` if the turret will ignore targets not on its priority list if a circuit condition is met.

### `ignore_unlisted_targets_condition` — `CircuitConditionDefinition`

The condition under which the turret will ignore targets not on its priority list.

### `read_ammo` — `boolean`

`true` if the turret will send the ammunition or fluid it contains to the circuit network.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
