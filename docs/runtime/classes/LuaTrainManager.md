# LuaTrainManager

The train manager manages all the train in the game. LuaTrainManager allows to perform some direct
queries to the train manager.  There is always exactly one train manager instance in a game, it can
be obtained from [LuaGameScript::train_manager](runtime:LuaGameScript::train_manager). This object
is always valid and is equal to any other instance of LuaTrainManager from this game.

## Attributes

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

### `get_train_by_id(train_id: uint32) -> LuaTrain`

Searches for a train with given ID.

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `train_id` | `uint32` | no | Train ID to search |

**Returns:**

- `LuaTrain` — Train if found

### `get_trains(filter: TrainFilter) -> array[LuaTrain]`

Gets all trains that pass given filter

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `TrainFilter` | no | Filters the train must pass in order to be returned here |

**Returns:**

- `array[LuaTrain]` — 

### `get_train_stops(filter: TrainStopFilter) -> array[LuaEntity]`

Gets all train stops that pass given filter

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `TrainStopFilter` | no | Filters the train stop must pass in order to be returned here |

**Returns:**

- `array[LuaEntity]` — 

### `request_train_path(?type: TrainPathRequestType, ?train: LuaTrain, goals: array[TrainPathFinderGoal], ?return_path: boolean, ?starts: array[RailEndStart], ?search_direction: 'respect-movement-direction' | 'any-direction-with-locomotives', ?in_chain_signal_section: boolean, ?steps_limit: uint32, ?shortest_path: boolean) -> TrainPathFinderOneGoalResult | TrainPathAllGoalsResult`

Direct access to train pathfinder. Allows to search rail paths or querying which stops are
accessible

**Parameters:**

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `TrainPathRequestType` | yes | Request type. Determines the return type of the method. Defaults to `"path"`. |
| `train` | `LuaTrain` | yes | Mandatory if `starts` is not provided, optional otherwise. Selects a context for the pathfinder to decide which train... |
| `goals` | `array[TrainPathFinderGoal]` | no |  |
| `return_path` | `boolean` | yes | Only relevant if request type is `"path"`. Returning a full path is expensive due to multiple LuaEntity created. In o... |
| `starts` | `array[RailEndStart]` | yes | Manually provided starting positions. |
| `search_direction` | `'respect-movement-direction' | 'any-direction-with-locomotives'` | yes | Only relevant if `starts` was not provided in which case 2 starts (front and back) are deduced from the train. Select... |
| `in_chain_signal_section` | `boolean` | yes | Defaults to `false`. If set to true, pathfinder will not return a path that cannot have its start immediately reserve... |
| `steps_limit` | `uint32` | yes | Maximum amount of steps pathfinder is allowed to perform. |
| `shortest_path` | `boolean` | yes | Defaults to `false`. If set to true, only length of rails is added to penalties causing search to look for shortest p... |

**Returns:**

- `TrainPathFinderOneGoalResult | TrainPathAllGoalsResult` — The type of the returned value depends on `type`.
