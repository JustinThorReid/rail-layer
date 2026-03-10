# CustomInputPrototype
*typename: `custom-input`*
*extends: `Prototype`*

Used for custom keyboard shortcuts/key bindings in mods. The key associated with the custom input
can be changed in the options. This means that `key_sequence` is simply the default key binding.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | Unique textual identification of the prototype. May only contain alphanumeric characters, dashes and underscores. May... |
| `key_sequence` | `string` | no | The default key sequence for this custom input. Use `""` (empty string) for unassigned. As modifier keys, these names... |
| `alternative_key_sequence` | `string` | yes | The alternative key binding for this control. See `key_sequence` for the format. |
| `controller_key_sequence` | `string` | yes | The controller (game pad) keybinding for this control. Use `""` (empty string) for unassigned. As modifier buttons, t... |
| `controller_alternative_key_sequence` | `string` | yes | The alternative controller (game pad) keybinding for this control. See `controller_key_sequence` for the format. |
| `linked_game_control` | `LinkedGameControl` | yes | When a custom-input is linked to a game control it won't show up in the control-settings GUI and will fire when the l... |
| `consuming` | `ConsumingType` | yes | Sets whether internal game events associated with the same key sequence should be fired or blocked. If they are fired... |
| `enabled` | `boolean` | yes | If this custom input is enabled. Disabled custom inputs exist but are not used by the game. If disabled, no event is ... |
| `enabled_while_spectating` | `boolean` | yes |  |
| `enabled_while_in_cutscene` | `boolean` | yes |  |
| `include_selected_prototype` | `boolean` | yes | If true, the type and name of the currently selected prototype will be provided as "selected_prototype" in the raised... |
| `item_to_spawn` | `ItemID` | yes | The item will be created when this input is pressed and action is set to "spawn-item". The item must have the [spawna... |
| `action` | `'lua' | 'spawn-item' | 'toggle-personal-roboport' | 'toggle-personal-logistic-requests' | 'toggle-equipment-movement-bonus'` | yes | A [Lua event](runtime:CustomInputEvent) is only raised if the action is "lua". |
| `block_modifiers` | `boolean` | yes | If `true`, when the shortcut is activated, the modifiers used for this shortcut can't be re-used to press something e... |
