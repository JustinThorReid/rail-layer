# Concept: InventoryPosition

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory` | `defines.inventory` | no | The ID of the inventory to insert into. |
| `stack` | `ItemStackIndex` | no | The stack index of the inventory to insert into. Uses 0-based indexing, in contrast to the 1-based indexing of most o... |
| `count` | `ItemCountType` | yes | How many items to insert. Defaults to `1`. |
