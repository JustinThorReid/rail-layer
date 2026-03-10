# DelayedActiveTriggerPrototype
*typename: `delayed-active-trigger`*
*extends: `ActiveTriggerPrototype`*

Delays the delivery of triggered effect by some number of ticks.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `action` | `Trigger` | no | The trigger to apply after `delay` has elapsed. |
| `delay` | `uint32` | no | The number of ticks to delay the delivery of the triggered effect. Must be greater than 0. |
| `repeat_count` | `uint32` | yes | The number of times to repeat the delayed trigger. |
| `repeat_delay` | `uint32` | yes | The number of ticks between repeat deliveries of the triggered effect. Must be greater than 0. |
| `cancel_when_source_is_destroyed` | `boolean` | yes | If true, the delayed trigger is cancelled if the source entity is destroyed. |
