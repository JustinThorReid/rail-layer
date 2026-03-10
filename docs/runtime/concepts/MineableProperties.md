# Concept: MineableProperties

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `minable` | `boolean` | no | Is this entity mineable at all? |
| `mining_time` | `double` | no | Energy required to mine an entity. |
| `transfer_entity_health_to_products` | `boolean` | no |  |
| `mining_particle` | `string` | yes | Prototype name of the particle produced when mining this entity. Will only be present if this entity produces any par... |
| `products` | `array[Product]` | yes | Products obtained by mining this entity. |
| `fluid_amount` | `double` | yes | The required fluid amount if any. |
| `required_fluid` | `string` | yes | The prototype name of the required fluid if any. |
| `mining_trigger` | `array[TriggerItem]` | yes | The mining trigger if any. |
