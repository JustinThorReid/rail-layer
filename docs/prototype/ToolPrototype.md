# ToolPrototype
*typename: `tool`*
*extends: `ItemPrototype`*

Items with a "durability". Used for [science packs](https://wiki.factorio.com/Science_pack).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `durability` | `double` | yes | The durability of this tool. Must be positive. Mandatory if `infinite` is false. Ignored if <code>infinite</code> is ... |
| `durability_description_key` | `string` | yes | May not be longer than 200 characters. |
| `durability_description_value` | `string` | yes | May not be longer than 200 characters. In-game, the game provides the locale with three [parameters](https://wiki.fac... |
| `infinite` | `boolean` | yes | Whether this tool has infinite durability. If this is false, `durability` must be specified. |
