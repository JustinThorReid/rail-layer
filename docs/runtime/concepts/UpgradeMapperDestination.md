# Concept: UpgradeMapperDestination

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'item' | 'entity'` | no |  |
| `name` | `string` | yes | Name of the item or entity. |
| `quality` | `string` | yes | Name of the quality prototype. |
| `module_limit` | `uint16` | yes | When upgrading modules, this defines the maximum number of this module to be installed in the destination entity. `0`... |
| `module_slots` | `array[BlueprintItemIDAndQualityIDPair]` | yes | When upgrading entities, this defines explicit modules to be installed in the destination entity. Lists empty slots a... |
