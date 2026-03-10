# Concept: DamageTypeFilters

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `whitelist` | `boolean` | no | Whether this is a whitelist or a blacklist of damage types. `true` means whitelist. |
| `types` | `dict[string, True]` | no | The damage types to filter for. The value in the dictionary is meaningless and exists just to allow for easy lookup. |
