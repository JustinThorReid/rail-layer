# Concept: EntityPrototypeFilter

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `filter` | `'flying-robot' | 'robot-with-logistics-interface' | 'rail' | 'ghost' | 'explosion' | 'vehicle' | 'crafting-machine' | 'rolling-stock' | 'turret' | 'transport-belt-connectable' | 'wall-connectable' | 'buildable' | 'placable-in-editor' | 'clonable' | 'selectable' | 'hidden' | 'entity-with-health' | 'building' | 'fast-replaceable' | 'uses-direction' | 'minable' | 'circuit-connectable' | 'autoplace' | 'blueprintable' | 'item-to-place' | 'name' | 'type' | 'collision-mask' | 'flag' | 'build-base-evolution-requirement' | 'selection-priority' | 'emissions-per-second' | 'crafting-category'` | no | The condition to filter on. |
| `mode` | `'or' | 'and'` | yes | How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher pre... |
| `invert` | `boolean` | yes | Inverts the condition. Default is `false`. |
