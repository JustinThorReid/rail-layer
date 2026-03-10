# BlueprintBookPrototype
*typename: `blueprint-book`*
*extends: `ItemWithInventoryPrototype`*

A [blueprint book](https://wiki.factorio.com/Blueprint_book).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_size` | `ItemStackIndex | 'dynamic'` | no | The inventory size of the item. |
| `stack_size` | `1` | no | Count of items of the same name that can be stored in one inventory slot. Must be 1 when the `"not-stackable"` flag i... |
| `draw_label_for_cursor_render` | `boolean` | yes | If the item will draw its label when held in the cursor in place of the item count. |
