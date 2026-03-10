# BlueprintItemPrototype
*typename: `blueprint`*
*extends: `SelectionToolPrototype`*

A [blueprint](https://wiki.factorio.com/Blueprint).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `stack_size` | `1` | no | Count of items of the same name that can be stored in one inventory slot. Must be 1 when the `"not-stackable"` flag i... |
| `draw_label_for_cursor_render` | `boolean` | yes | Whether the item will draw its label when held in the cursor in place of the item count. |
| `select` | `SelectionModeData` | no | The [SelectionModeData::mode](prototype:SelectionModeData::mode) is hardcoded to `"blueprint"`. The filters are parse... |
| `alt_select` | `SelectionModeData` | no | The [SelectionModeData::mode](prototype:SelectionModeData::mode) is hardcoded to `"blueprint"`. The filters are parse... |
| `always_include_tiles` | `boolean` | yes | This property is hardcoded to `false`. |
