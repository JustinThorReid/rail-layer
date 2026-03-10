# SelectionToolPrototype
*typename: `selection-tool`*
*extends: `ItemWithLabelPrototype`*

Used in the base game as a base for the blueprint item and the deconstruction item.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `select` | `SelectionModeData` | no |  |
| `alt_select` | `SelectionModeData` | no |  |
| `super_forced_select` | `SelectionModeData` | yes |  |
| `reverse_select` | `SelectionModeData` | yes |  |
| `alt_reverse_select` | `SelectionModeData` | yes | Settings for how the selection tool alt-reverse-selects things in-game (using SHIFT + Right mouse button). |
| `always_include_tiles` | `boolean` | yes | If tiles should be included in the selection regardless of entities also being in the selection. This is a visual onl... |
| `mouse_cursor` | `MouseCursorID` | yes |  |
| `skip_fog_of_war` | `boolean` | yes |  |
