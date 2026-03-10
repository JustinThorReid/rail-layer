# ItemWithLabelPrototype
*typename: `item-with-label`*
*extends: `ItemPrototype`*

Like a normal item but with the ability to have a colored label.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `default_label_color` | `Color` | yes | The default label color the item will use. |
| `draw_label_for_cursor_render` | `boolean` | yes | If the item will draw its label when held in the cursor in place of the item count. |
