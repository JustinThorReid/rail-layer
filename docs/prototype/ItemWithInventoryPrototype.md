# ItemWithInventoryPrototype
*typename: `item-with-inventory`*
*extends: `ItemWithLabelPrototype`*

The inventory allows setting player defined filters similar to cargo wagon inventories.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `inventory_size` | `ItemStackIndex` | no | The inventory size of the item. |
| `item_filters` | `array[ItemID]` | yes | A list of explicit item names to be used as filters. |
| `item_group_filters` | `array[ItemGroupID]` | yes | A list of explicit item group names to be used as filters. |
| `item_subgroup_filters` | `array[ItemSubGroupID]` | yes | A list of explicit [item subgroup](prototype:ItemSubGroup) names to be used as filters. |
| `filter_mode` | `'blacklist' | 'whitelist'` | yes | This determines how filters are applied. If no filters are defined this is automatically set to "none". |
| `filter_message_key` | `string` | yes | The locale key used when the player attempts to put an item that doesn't match the filter rules into the item-with-in... |
| `stack_size` | `1` | no | Count of items of the same name that can be stored in one inventory slot. Must be 1 when the `"not-stackable"` flag i... |
