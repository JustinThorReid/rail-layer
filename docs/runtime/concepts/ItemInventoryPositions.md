# Concept: ItemInventoryPositions

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `in_inventory` | `array[InventoryPosition]` | yes | A list of stacks into which items should be inserted. |
| `grid_count` | `ItemCountType` | yes | Defaults to `0`. Number of items to request for the equipment grid. When the items arrive they will be used to revive... |
