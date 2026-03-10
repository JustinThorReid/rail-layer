# LuaFluidBox

An array of fluid boxes of an entity. Entities may contain more than one fluid box, and some can
change the number of fluid boxes -- for instance, an assembling machine will change its number of
fluid boxes depending on its active recipe. See [Fluid](runtime:Fluid).  Do note that reading from a
[LuaFluidBox](runtime:LuaFluidBox) creates a new table and writing will copy the given fields from
the table into the engine's own fluid box structure. Therefore, the correct way to update a fluidbox
of an entity is to read it first, modify the table, then write the modified table back. Directly
accessing the returned table's attributes won't have the desired effect.

## Attributes

### `owner` — `LuaEntity` (read-only)

The entity that owns this fluidbox.

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

### `get_prototype(index: uint32) -> LuaFluidBoxPrototype | array[LuaFluidBoxPrototype]`

The prototype of this fluidbox index. If this is used on a fluidbox of a crafting machine which due
to recipe was created by merging multiple prototypes, a table of prototypes that were merged will be
returned instead

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `LuaFluidBoxPrototype | array[LuaFluidBoxPrototype]` — 

### `get_capacity(index: uint32) -> double`

The capacity of the given fluidbox segment.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `double` — 

### `get_connections(index: uint32) -> array[LuaFluidBox]`

The fluidboxes to which the fluidbox at the given index is connected.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `array[LuaFluidBox]` — 

### `get_pipe_connections(index: uint32) -> array[PipeConnection]`

Get the fluid box's connections and associated data.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `array[PipeConnection]` — 

### `get_filter(index: uint32) -> FluidBoxFilter`

Get a fluid box filter

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the filter to get. |

**Returns:**

- `FluidBoxFilter` — The filter at the requested index, or `nil` if there isn't one.

### `set_filter(index: uint32, filter: FluidBoxFilterSpec | nil) -> boolean`

Set a fluid box filter.  Some entities cannot have their fluidbox filter set, notably fluid wagons
and crafting machines.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no | The index of the filter to set. |
| `filter` | `FluidBoxFilterSpec | nil` | no | The filter to set. Setting `nil` clears the filter. |

**Returns:**

- `boolean` — Whether the filter was set successfully.

### `get_locked_fluid(index: uint32) -> string`

Returns the fluid the fluidbox is locked onto

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `string` — `nil` if the fluidbox is not locked to any fluid.

### `get_fluid_segment_id(index: uint32) -> uint32`

Gets the unique ID of the fluid segment this fluid box belongs to. May return `nil` for fluid wagon,
fluid turret's internal buffer or a fluidbox which does not belong to a fluid segment.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `uint32` — 

### `get_fluid_segment_contents(index: uint32) -> dict[string, uint32]`

Gets counts of all fluids in the fluid segment. May return `nil` for fluid wagon, fluid turret's
internal buffer, or a fluidbox which does not belong to a fluid segment.  Note that this method only
ever returns one fluid, since fluids can't be mixed anymore.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `dict[string, uint32]` — The counts, indexed by fluid name.

### `get_fluid_segment_extent_bounding_box(index: uint32) -> BoundingBox`

Gets the current extent bounding box of the fluid segment this fluid box belongs to. May return
`nil` for fluid wagon, fluid turret's internal buffer, or a fluidbox which does not belong to a
fluid segment.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |

**Returns:**

- `BoundingBox` — 

### `flush(index: uint32, ?fluid: FluidID) -> dict[string, FluidAmount]`

Flushes all fluid from this fluidbox and its fluid system.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `index` | `uint32` | no |  |
| `fluid` | `FluidID` | yes | If provided, only this fluid is flushed. |

**Returns:**

- `dict[string, FluidAmount]` — The removed fluid.

### `add_linked_connection(this_linked_connection_id: uint32, other_entity: LuaEntity, other_linked_connection_id: uint32)`

Registers a linked connection between this entity and other entity. Because entity may have multiple
fluidboxes, each with multiple connections that could be linked, a unique value for this and other
linked_connection_id may need to be given.  It may happen a linked connection is not established
immediately due to crafting machines being possible to not have certain fluidboxes exposed at a
given point in time, but once they appear (due to recipe changes that would use them) they will be
linked. Linked connections are persisted as (this_entity, this_linked_connection_id, other_entity,
other_linked_connection_id) so if a pipe connection definition's value of linked_connection_id
changes existing connections may not restore correct connections.  Every fluidbox connection that
was defined in prototypes as connection_type=="linked" may be linked to at most 1 other fluidbox.
When trying to connect already used connection, previous connection will be removed.  Linked
connections cannot go to the same entity even if they would be part of other fluidbox.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `this_linked_connection_id` | `uint32` | no |  |
| `other_entity` | `LuaEntity` | no |  |
| `other_linked_connection_id` | `uint32` | no |  |

### `remove_linked_connection(this_linked_connection_id: uint32)`

Removes linked connection record. If connected, other end will be also removed.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `this_linked_connection_id` | `uint32` | no |  |

### `get_linked_connection(this_linked_connection_id: uint32) -> (LuaEntity, uint32)`

Returns other end of a linked connection.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `this_linked_connection_id` | `uint32` | no |  |

**Returns:**

- `LuaEntity` — Other entity to which a linked connection was made

- `uint32` — linked_connection_id on other entity

### `get_linked_connections() -> array[FluidBoxConnectionRecord]`

Returns list of all linked connections registered for this entity.

**Returns:**

- `array[FluidBoxConnectionRecord]` — 

## Operators

- `index` — Access, set or clear a fluid box. The index must always be in bounds (see [LuaFluidBox::length_operator](runtime:LuaF...

- `length` — Number of fluid boxes.
