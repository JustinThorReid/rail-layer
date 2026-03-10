# Concept: LuaSectorScannedEventFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `'ghost' | 'rail' | 'rail-signal' | 'rolling-stock' | 'robot-with-logistics-interface' | 'vehicle' | 'turret' | 'crafting-machine' | 'wall-connectable' | 'transport-belt-connectable' | 'circuit-network-connectable' | 'type' | 'name' | 'ghost_type' | 'ghost_name'` | no | The condition to filter on. |
| `mode` | `'or' | 'and'` | yes | How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher pre... |
| `invert` | `boolean` | yes | Inverts the condition. Default is `false`. |
