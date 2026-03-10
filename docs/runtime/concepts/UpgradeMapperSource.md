# Concept: UpgradeMapperSource

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'item' | 'entity'` | no |  |
| `name` | `string` | yes | Name of the item or entity. |
| `quality` | `string` | yes | Name of the quality prototype. |
| `comparator` | `ComparatorString` | yes | The quality comparison type. |
| `module_filter` | `EntityIDFilter` | yes | When upgrading modules, this defines the specific entities to apply the upgrade to. `nil` applies it to all entities. |
