# Concept: AssemblingMachineBlueprintControlBehavior

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `set_recipe` | `boolean` | yes | Defaults to `false`. |
| `read_contents` | `boolean` | yes | Defaults to `false`. |
| `include_in_crafting` | `boolean` | yes | Defaults to `true`. |
| `include_fuel` | `boolean` | yes | Defaults to `false`. |
| `read_recipe_finished` | `boolean` | yes | Defaults to `false`. |
| `read_ingredients` | `boolean` | yes | Defaults to `false`. |
| `read_working` | `boolean` | yes | Defaults to `false` |
| `recipe_finished_signal` | `SignalID` | yes |  |
| `working_signal` | `SignalID` | yes |  |
| `circuit_enabled` | `boolean` | yes | Defaults to `false`. |
| `circuit_condition` | `CircuitCondition` | yes |  |
| `connect_to_logistic_network` | `boolean` | yes | Defaults to `false`. |
| `logistic_condition` | `CircuitCondition` | yes |  |
