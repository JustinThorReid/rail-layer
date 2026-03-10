# EquipmentGridPrototype
*typename: `equipment-grid`*
*extends: `Prototype`*

The prototype of an equipment grid, for example the one used in a [power
armor](https://wiki.factorio.com/Power_armor).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `equipment_categories` | `array[EquipmentCategoryID]` | no | Only [equipment](prototype:EquipmentPrototype) with at least one of these [categories](prototype:EquipmentCategory) c... |
| `width` | `uint32` | no |  |
| `height` | `uint32` | no |  |
| `locked` | `boolean` | yes | Whether this locked from user interaction which means that the user cannot put equipment into or take equipment from ... |
