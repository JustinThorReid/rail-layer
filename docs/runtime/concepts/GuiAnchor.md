# Concept: GuiAnchor

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `gui` | `defines.relative_gui_type` | no |  |
| `position` | `defines.relative_gui_position` | no |  |
| `type` | `string` | yes | If provided, only anchors the GUI element when the opened things type matches the type. |
| `name` | `string` | yes | If provided, only anchors the GUI element when the opened thing matches the name. `name` takes precedence over `names`. |
| `names` | `array[string]` | yes | If provided, only anchors the GUI element when the opened thing matches one of the names. When reading an anchor, `na... |
| `ghost_mode` | `'both' | 'only_ghosts' | 'only_real'` | yes | Defaults to `"only_real"`. |
