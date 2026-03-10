# LuaPlanet

The runtime values of a planet

## Attributes

### `name` — `string` (read-only)

The planets name.

### `prototype` — `LuaSpaceLocationPrototype` (read-only)

### `surface` — `LuaSurface` (read-only) *(optional)*

The surface for this planet if one currently exists.  Planets do not default generate their surface.
[LuaPlanet::create_surface](runtime:LuaPlanet::create_surface) can be used to force the surface to
exist.  [LuaPlanet::associate_surface](runtime:LuaPlanet::associate_surface) can be used to create
an association with an existing surface.

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

### `create_surface() -> LuaSurface`

Creates the associated surface if one doesn't already exist.

**Returns:**

- `LuaSurface` — 

### `associate_surface(surface: SurfaceIdentification)`

Associates the given surface with this planet. Surface must not already be associated with a planet
and the planet must not already have an associated surface.  Planet must not be using
[entities_require_heating](runtime:LuaSpaceLocationPrototype::entities_require_heating).

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `surface` | `SurfaceIdentification` | no | The surface to be associated. |

### `reset_map_gen_settings()`

Resets the map gen settings on this planet to the default from-prototype state.

### `get_space_platforms(force: ForceID) -> array[LuaSpacePlatform]`

Gets the built space platforms orbiting this planet on the given force.  Note, this does not include
platforms that have not yet been built.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `force` | `ForceID` | no |  |

**Returns:**

- `array[LuaSpacePlatform]` — 
