# MouseCursor
*typename: `mouse-cursor`*

Used by [SelectionToolPrototype::mouse_cursor](prototype:SelectionToolPrototype::mouse_cursor).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'mouse-cursor'` | no |  |
| `name` | `string` | no | Name of the prototype. |
| `system_cursor` | `'arrow' | 'i-beam' | 'crosshair' | 'wait-arrow' | 'size-all' | 'no' | 'hand'` | yes | Either this or the other three properties have to be present. |
| `filename` | `FileName` | yes | Mandatory if `system_cursor` is not defined. |
| `hot_pixel_x` | `int16` | yes | Mandatory if `system_cursor` is not defined. |
| `hot_pixel_y` | `int16` | yes | Mandatory if `system_cursor` is not defined. |
