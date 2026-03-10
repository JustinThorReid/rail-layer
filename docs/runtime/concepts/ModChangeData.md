# Concept: ModChangeData

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `old_version` | `string` | yes | Old version of the mod. `nil` if the mod wasn't previously present (i.e. it was just added). |
| `new_version` | `string` | yes | New version of the mod. `nil` if the mod is no longer present (i.e. it was just removed). |
