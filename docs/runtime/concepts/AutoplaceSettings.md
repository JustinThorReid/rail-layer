# Concept: AutoplaceSettings

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `treat_missing_as_default` | `boolean` | yes | Whether missing autoplace names for this type should be default enabled. Always defined when reading autoplace settings. |
| `settings` | `dict[string, AutoplaceControl]` | yes | Always defined when reading autoplace settings. |
