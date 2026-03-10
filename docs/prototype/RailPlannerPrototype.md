# RailPlannerPrototype
*typename: `rail-planner`*
*extends: `ItemPrototype`*

A [rail planner](https://wiki.factorio.com/Rail_planner).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `rails` | `array[EntityID]` | no | May not be an empty array. Entities must be rails and their first item-to-place must be this item. |
| `support` | `EntityID` | yes | Name of a rail support. |
| `manual_length_limit` | `double` | yes |  |
