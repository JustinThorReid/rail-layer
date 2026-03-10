# Event: on_permission_group_edited

Called directly after a permission group is edited in some way.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `player_index` | `uint32` | yes | The player that did the editing or `nil` if by a mod. |
| `group` | `LuaPermissionGroup` | no | The group being edited. |
| `type` | `'add-permission' | 'remove-permission' | 'enable-all' | 'disable-all' | 'add-player' | 'remove-player' | 'rename'` | no | The edit type. |
| `action` | `defines.input_action` | no | The action when the `type` is `"add-permission"` or `"remove-permission"`. |
| `other_player_index` | `uint32` | no | The other player when the `type` is `"add-player"` or `"remove-player"`. |
| `old_name` | `string` | no | The old group name when the `type` is `"rename"`. |
| `new_name` | `string` | no | The new group name when the `type` is `"rename"`. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
