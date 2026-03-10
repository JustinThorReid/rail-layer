# Concept: BlueprintEntity

The representation of an entity inside of a blueprint.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity_number` | `uint32` | no | The entity's unique identifier in the blueprint. |
| `name` | `string` | no | The prototype name of the entity. |
| `position` | `MapPosition` | no | The position of the entity. |
| `direction` | `defines.direction` | yes | The direction the entity is facing. Only present for entities that can face in different directions and when the enti... |
| `mirror` | `boolean` | yes | Whether this entity is mirrored. |
| `quality` | `string` | yes | The prototype name of the entity's quality. |
| `items` | `array[BlueprintInsertPlan]` | yes | The items that the entity will request when revived, if any. |
| `tags` | `Tags` | yes | The entity tags of the entity, if there are any. |
| `wires` | `array[BlueprintWire]` | yes | Wires connected to this entity in the blueprint. |
| `burner_fuel_inventory` | `BlueprintInventoryWithFilters` | yes | Used by entities with a burner energy source. |
