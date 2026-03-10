# Event: on_pre_permission_group_deleted

Called directly before a permission group is deleted.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player doing the deletion or `nil` if by a mod. |
| `group` | `LuaPermissionGroup` | no | The group to be deleted. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
