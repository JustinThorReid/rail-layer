# Event: on_permission_group_added

Called directly after a permission group is added.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player that added the group or `nil` if by a mod. |
| `group` | `LuaPermissionGroup` | no | The group added. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
