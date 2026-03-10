# Concept: ItemStackDefinition

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | Prototype name of the item the stack holds. |
| `count` | `ItemCountType` | yes | Number of items the stack holds. Defaults to `1`. |
| `quality` | `string` | yes | Quality of the item the stack holds. Defaults to `"normal"`. |
| `health` | `float` | yes | Health of the items in the stack. Defaults to `1.0`. |
| `durability` | `double` | yes | Durability of the tool items in the stack. |
| `ammo` | `float` | yes | Amount of ammo in the ammo items in the stack. |
| `tags` | `array[string]` | yes | Tags of the items with tags in the stack. |
| `custom_description` | `LocalisedString` | yes | Description of the items with tags in the stack. |
| `spoil_percent` | `double` | yes | The spoil percent for this item if the item can spoil. Defaults to `0`. |
