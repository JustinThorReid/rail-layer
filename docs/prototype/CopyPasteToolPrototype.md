# CopyPasteToolPrototype
*typename: `copy-paste-tool`*
*extends: `SelectionToolPrototype`*

A copy-paste or cut-paste tool.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `cuts` | `boolean` | yes |  |
| `stack_size` | `1` | no | Count of items of the same name that can be stored in one inventory slot. Must be 1 when the `"not-stackable"` flag i... |
| `always_include_tiles` | `boolean` | yes | This property is hardcoded to `false`. |
| `select` | `SelectionModeData` | no | The filters are parsed, but then ignored and forced to be empty. |
| `alt_select` | `SelectionModeData` | no | The filters are parsed, but then ignored and forced to be empty. |
