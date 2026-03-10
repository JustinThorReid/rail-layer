# ChainActiveTriggerPrototype
*typename: `chain-active-trigger`*
*extends: `ActiveTriggerPrototype`*

Jumps between targets and applies a [Trigger](prototype:Trigger) to them.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `action` | `Trigger` | yes | The trigger to apply when jumping to a new target. |
| `max_jumps` | `uint32` | yes | Max number of jumps per trigger. |
| `max_range_per_jump` | `double` | yes | Max length of jumps. |
| `max_range` | `double` | yes | Max distance jumps are allowed to travel away from the original target. |
| `jump_delay_ticks` | `MapTick` | yes | Tick delay between each jump. `0` means that all jumps are instantaneous. |
| `fork_chance` | `double` | yes | Chance that a new fork will spawn after each jump. `0` for 0% chance and `1` for 100% chance. Must be between 0 and 1. |
| `fork_chance_increase_per_quality_level` | `double` | yes |  |
| `max_forks_per_jump` | `uint32` | yes | Maximum number of forks that can spawn from a single jump. |
| `max_forks` | `uint32` | yes | Maximum number of forks allowed to spawn for the entire chain. |
