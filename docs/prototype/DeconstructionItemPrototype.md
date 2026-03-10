# DeconstructionItemPrototype
*typename: `deconstruction-item`*
*extends: `SelectionToolPrototype`*

A [deconstruction planner](https://wiki.factorio.com/Deconstruction_planner).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `entity_filter_count` | `ItemStackIndex` | yes | Can't be > 255. |
| `tile_filter_count` | `ItemStackIndex` | yes | Can't be > 255. |
| `stack_size` | `1` | no | Count of items of the same name that can be stored in one inventory slot. Must be 1 when the `"not-stackable"` flag i... |
| `select` | `SelectionModeData` | no | The [SelectionModeData::mode](prototype:SelectionModeData::mode) is hardcoded to `"deconstruct"`. The filters are par... |
| `alt_select` | `SelectionModeData` | no | The [SelectionModeData::mode](prototype:SelectionModeData::mode) is hardcoded to `"cancel-deconstruct"`. The filters ... |
| `always_include_tiles` | `boolean` | yes | This property is hardcoded to `false`. |
