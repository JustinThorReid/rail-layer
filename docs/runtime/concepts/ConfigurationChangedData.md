# Concept: ConfigurationChangedData

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `old_version` | `string` | yes | Old version of the map. Present only when loading map version other than the current version. |
| `new_version` | `string` | yes | New version of the map. Present only when loading map version other than the current version. |
| `mod_changes` | `dict[string, ModChangeData]` | no | Dictionary of mod changes. It is indexed by mod name. |
| `mod_startup_settings_changed` | `boolean` | no | `true` when mod startup settings have changed since the last time this save was loaded. |
| `migration_applied` | `boolean` | no | `true` when mod prototype migrations have been applied since the last time this save was loaded. |
| `migrations` | `dict[IDType, dict[string, string]]` | no | Dictionary of prototype changes due to [migrations](runtime:migrations). The inner dictionary maps the old prototype ... |
