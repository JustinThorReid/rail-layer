# LuaFurnaceControlBehavior

Control behavior for furnaces.

## Attributes

### `circuit_read_contents` — `boolean`

`true` if the furnace reads its ingredients contents, product contents and materials in crafting.

### `include_in_crafting` — `boolean`

`true` if the read contents should include items in crafting.

### `include_fuel` — `boolean`

`true` if the read contents should include fuel (content of energy source)

### `circuit_read_ingredients` — `boolean`

`true` if the furnace outputs ingredients of current recipe as a signals to circuit network.

### `circuit_read_recipe_finished` — `boolean`

`true` if the the furnace sends a signal when the recipe finishes.

### `circuit_recipe_finished_signal` — `SignalID` *(optional)*

The signal sent when the furnace finishes a recipe.

### `circuit_read_working` — `boolean`

`true` if the the furnace sends a signal when it is working.

### `circuit_working_signal` — `SignalID` *(optional)*

The signal sent when the furnace is working.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
