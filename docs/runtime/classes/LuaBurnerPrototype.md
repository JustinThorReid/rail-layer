# LuaBurnerPrototype

Prototype of a burner energy source.

## Attributes

### `emissions_per_joule` — `dict[string, double]` (read-only)

The table of emissions of this energy source in `pollution/Joule`, indexed by pollutant type.
Multiplying it by energy consumption in `Watt` gives `pollution/second`.

### `render_no_network_icon` — `boolean` (read-only)

### `render_no_power_icon` — `boolean` (read-only)

### `effectivity` — `double` (read-only)

### `fuel_inventory_size` — `uint32` (read-only)

### `burnt_inventory_size` — `uint32` (read-only)

### `smoke` — `array[SmokeSource]` (read-only) *(optional)*

The smoke sources for this burner prototype.

### `light_flicker` — `{border_fix_speed: float, color: Color, derivation_change_deviation: float, derivation_change_frequency: float, light_intensity_to_size_coefficient: float, maximum_intensity: float, minimum_intensity: float, minimum_light_size: float}` (read-only) *(optional)*

The light flicker definition for this burner prototype.

### `fuel_categories` — `dict[string, True]` (read-only)

The value in the dictionary is meaningless and exists just to allow for easy lookup.

### `initial_fuel` — `LuaItemPrototype` (read-only) *(optional)*

### `initial_fuel_percent` — `double` (read-only)

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
