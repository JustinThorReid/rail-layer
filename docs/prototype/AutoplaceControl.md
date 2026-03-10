# AutoplaceControl
*typename: `autoplace-control`*
*extends: `Prototype`*

A setting in the map creation GUI. Used by the [autoplace
system](prototype:AutoplaceSpecification::control).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `category` | `'resource' | 'terrain' | 'cliff' | 'enemy'` | no | Controls in what tab the autoplace is shown in the map generator GUI. |
| `richness` | `boolean` | yes | Sets whether this control's richness can be changed. The map generator GUI will only show the richness slider when th... |
| `can_be_disabled` | `boolean` | yes | Whether there is an "enable" checkbox for the autoplace control in the map generator GUI. If this is false, the autop... |
| `related_to_fight_achievements` | `boolean` | yes | Whether this settings being lower than default disables fight related achievements. |
| `hidden` | `boolean` | yes | Hides the autoplace control from the map generation screen. |
