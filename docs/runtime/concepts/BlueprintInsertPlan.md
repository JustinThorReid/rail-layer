# Concept: BlueprintInsertPlan

Defines an item type that a blueprint entity will request.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `BlueprintItemIDAndQualityIDPair` | no | The prototype name and quality of the item to request. |
| `items` | `ItemInventoryPositions` | no | Describes the inventories to insert these items into. |
