# Event: on_permission_group_deleted

Called directly after a permission group is deleted.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player doing the deletion or `nil` if by a mod. |
| `group_name` | `string` | no | The group that was deleted. |
| `id` | `uint32` | no | The group id that was deleted. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
