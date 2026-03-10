# Event: script_raised_destroy_segmented_unit

A static event that mods can use to tell other mods they destroyed a segmented unit by script. This
event is only raised if a mod does so with
[LuaBootstrap::raise_event](runtime:LuaBootstrap::raise_event), or [LuaBootstrap::raise_script_destr
oy_segmented_unit](runtime:LuaBootstrap::raise_script_destroy_segmented_unit), or when
`raise_destroy` is passed to [LuaSegmentedUnit::destroy](runtime:LuaSegmentedUnit::destroy).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `segmented_unit` | `LuaSegmentedUnit` | no | The segmented unit that was destroyed. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
