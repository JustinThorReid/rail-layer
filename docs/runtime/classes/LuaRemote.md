# LuaRemote

Registry of interfaces between scripts. An interface is simply a dictionary mapping names to
functions. A script or mod can then register an interface with [LuaRemote](runtime:LuaRemote), after
that any script can call the registered functions, provided it knows the interface name and the
desired function name. An instance of LuaRemote is available through the global object named
`remote`.

## Attributes

### `object_name` — `string` (read-only)

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may
also be suffixed with a dotted path to a member of the struct.

### `interfaces` — `dict[string, dict[string, True]]` (read-only)

List of all registered interfaces. For each interface name, `remote.interfaces[name]` is a
dictionary mapping the interface's registered functions to `true`.

## Methods

### `add_interface(name: string, functions: dict[string, function()])`

Add a remote interface.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | Name of the interface. If the name matches any existing interface, an error is thrown. |
| `functions` | `dict[string, function()]` | no | List of functions that are members of the new interface. |

### `remove_interface(name: string) -> boolean`

Removes an interface with the given name.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | Name of the interface. |

**Returns:**

- `boolean` — Whether the interface was removed. `false` if the interface didn't exist.

### `call(interface: string, function: string) -> Any`

Call a function of an interface.  Providing an unknown interface or function name will result in a
script error.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `interface` | `string` | no | Interface to look up `function` in. |
| `function` | `string` | no | Function name that belongs to the `interface`. |

**Returns:**

- `Any` — 
