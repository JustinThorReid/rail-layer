# LuaFluidEnergySourcePrototype

Prototype of a fluid energy source.

## Attributes

### `emissions_per_joule` — `dict[string, double]` (read-only)

The table of emissions of this energy source in `pollution/Joule`, indexed by pollutant type.
Multiplying it by energy consumption in `Watt` gives `pollution/second`.

### `render_no_network_icon` — `boolean` (read-only)

### `render_no_power_icon` — `boolean` (read-only)

### `effectivity` — `double` (read-only)

### `burns_fluid` — `boolean` (read-only)

### `scale_fluid_usage` — `boolean` (read-only)

### `destroy_non_fuel_fluid` — `boolean` (read-only)

### `fluid_usage_per_tick` — `double` (read-only)

### `smoke` — `array[SmokeSource]` (read-only)

The smoke sources for this prototype, if any.

### `maximum_temperature` — `double` (read-only)

### `fluid_box` — `LuaFluidBoxPrototype` (read-only)

The fluid box for this energy source.

### `valid` — `boolean` (read-only)

Is this object valid? This Lua object holds a reference to an object within the game engine. It is
possible that the game-engine object is removed whilst a mod still holds the corresponding Lua
object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are
advised to check for object validity if any change to the game state might have occurred between the
creation of the Lua object and its access.

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.
