# EquipmentPrototype
*extends: `Prototype`*

Abstract base of all equipment modules. Equipment modules can be inserted into [equipment
grids](prototype:EquipmentGridPrototype).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sprite` | `Sprite` | no | The graphics to use when this equipment is shown inside an equipment grid. |
| `shape` | `EquipmentShape` | no | How big this equipment should be in the grid and whether it should be one solid rectangle or of a custom shape. |
| `categories` | `array[EquipmentCategoryID]` | no | Sets the categories of the equipment. It can only be inserted into [grids](prototype:EquipmentGridPrototype::equipmen... |
| `energy_source` | `ElectricEnergySource` | no |  |
| `take_result` | `ItemID` | yes | Name of the item prototype that should be returned to the player when they remove this equipment from an equipment grid. |
| `background_color` | `Color` | yes | The color that the background of this equipment should have when shown inside an equipment grid. |
| `background_border_color` | `Color` | yes | The color that the border of the background of this equipment should have when shown inside an equipment grid. |
| `grabbed_background_color` | `Color` | yes | The color that the background of this equipment should have when held in the players hand and hovering over an equipm... |
