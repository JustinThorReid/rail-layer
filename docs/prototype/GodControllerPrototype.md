# GodControllerPrototype
*typename: `god-controller`*

Properties of the god controller.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'god-controller'` | no |  |
| `name` | `string` | no | Name of the god-controller. Base game uses "default". |
| `inventory_size` | `ItemStackIndex` | no |  |
| `movement_speed` | `double` | no | Must be >= 0.34375. |
| `item_pickup_distance` | `double` | no |  |
| `loot_pickup_distance` | `double` | no |  |
| `mining_speed` | `double` | no |  |
| `crafting_categories` | `array[RecipeCategoryID]` | yes | Names of the crafting categories the player can craft recipes from. |
| `mining_categories` | `array[ResourceCategoryID]` | yes | Names of the resource categories the player can mine resources from. |
