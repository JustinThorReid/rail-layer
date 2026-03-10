# ModData
*typename: `mod-data`*
*extends: `Prototype`*

Block of arbitrary data set by mods in data stage.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `data_type` | `string` | yes | Arbitrary string that mods can use to declare type of data. Can be used for mod compatibility when one mod declares b... |
| `data` | `dict[string, AnyBasic]` | no |  |
