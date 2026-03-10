# Concept: Offer

A single offer on a market entity.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `price` | `array[MarketIngredient]` | yes | List of prices. |
| `offer` | `TechnologyModifier` | no | The action that will take place when a player accepts the offer. Usually a `"give-item"` modifier. |
