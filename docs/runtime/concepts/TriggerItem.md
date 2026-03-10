# Concept: TriggerItem

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'direct' | 'area' | 'line' | 'cluster'` | no |  |
| `action_delivery` | `array[TriggerDelivery]` | yes |  |
| `entity_flags` | `EntityPrototypeFlags` | yes | The trigger will only affect entities that contain any of these flags. |
| `ignore_collision_condition` | `boolean` | no |  |
| `collision_mask` | `CollisionMask` | no | The trigger will only affect entities that would collide with given collision mask. |
| `trigger_target_mask` | `TriggerTargetMask` | no |  |
| `force` | `ForceCondition` | no | If `"enemy"`, the trigger will only affect entities whose force is different from the attacker's and for which there ... |
| `repeat_count` | `uint32` | no |  |
| `probability` | `float` | no |  |
