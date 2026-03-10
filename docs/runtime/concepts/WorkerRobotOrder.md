# Concept: WorkerRobotOrder

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `defines.robot_order_type` | no | The type of the order. |
| `target` | `LuaEntity` | yes | The target of the order. |
| `item_to_place` | `ItemWithQualityCount` | yes | The item to place if relevant. |
| `secondary_target` | `LuaEntity` | yes | The secondary target of the upgrade order. |
| `cliff_explosive_id` | `LuaItemPrototype` | yes | The cliff explosive for the cliff explode job. |
| `target_item` | `ItemIDAndQualityIDPair` | yes | The target item of the pickup or deliver order. |
| `target_count` | `ItemCountType` | yes | The target count of the pickup or deliver order. |
