# TutorialDefinition
*typename: `tutorial`*
*extends: `PrototypeBase`*

The definition of the tutorial to be used in the tips and tricks, see
[TipsAndTricksItem](prototype:TipsAndTricksItem). The actual tutorial scripting code is defined in
the tutorial scenario. The scenario must be placed in the `tutorials` folder in the mod.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `scenario` | `string` | no | Name of the folder for this tutorial scenario in the [`tutorials` folder](runtime:mod-structure). |
| `order` | `Order` | yes | Used to order prototypes in inventory, recipes and GUIs. May not exceed a length of 200 characters. |
