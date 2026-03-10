# TipsAndTricksItem
*typename: `tips-and-tricks-item`*
*extends: `PrototypeBase`*

A tips and tricks entry.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `image` | `FileName` | yes |  |
| `simulation` | `SimulationDefinition` | yes |  |
| `tag` | `string` | yes | String to add in front of the tips and trick entries name. Can be anything, the base game tends to use [rich text](ht... |
| `category` | `string` | yes | Name of a [TipsAndTricksItemCategory](prototype:TipsAndTricksItemCategory), used for the sorting of this tips and tri... |
| `indent` | `uint8` | yes | The tips and tricks entry is indented by `indent`×6 spaces. |
| `is_title` | `boolean` | yes | Whether the tip title on the left in the tips and tricks GUI should use the "title_tip_item" style (semi bold font). |
| `trigger` | `TipTrigger` | yes | Condition for when the tip notification should be shown to the player. |
| `skip_trigger` | `TipTrigger` | yes | Condition for never showing the tip notification to the player. |
| `tutorial` | `string` | yes | Name of a [TutorialDefinition](prototype:TutorialDefinition). |
| `starting_status` | `TipStatus` | yes |  |
| `dependencies` | `array[string]` | yes | An array of names of other tips and tricks items. This tips and tricks entry is only shown to the player once they ha... |
| `player_input_method_filter` | `PlayerInputMethodFilter` | yes |  |
| `icons` | `array[IconData]` | yes | Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon file. Only loaded if `icons` is not defined. |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
| `order` | `Order` | yes | Used to order prototypes in inventory, recipes and GUIs. May not exceed a length of 200 characters. |
