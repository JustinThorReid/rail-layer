# ArmorPrototype
*typename: `armor`*
*extends: `ToolPrototype`*

Armor to wear on your in-game [character](prototype:CharacterPrototype) for defense and buffs.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `equipment_grid` | `EquipmentGridID` | yes | Name of the [EquipmentGridPrototype](prototype:EquipmentGridPrototype) that this armor has. |
| `resistances` | `array[Resistance]` | yes | What amount of damage the armor takes on what type of damage is incoming. |
| `inventory_size_bonus` | `ItemStackIndex` | yes | By how many slots the inventory of the player is expanded when the armor is worn. |
| `provides_flight` | `boolean` | yes |  |
| `collision_box` | `BoundingBox` | yes |  |
| `drawing_box` | `BoundingBox` | yes |  |
| `takeoff_sound` | `Sound` | yes | Only loaded if `provides_flight` is `true`. |
| `flight_sound` | `InterruptibleSound` | yes | Only loaded if `provides_flight` is `true`. |
| `landing_sound` | `Sound` | yes | Only loaded if `provides_flight` is `true`. |
| `steps_sound` | `Sound` | yes |  |
| `moving_sound` | `Sound` | yes |  |
