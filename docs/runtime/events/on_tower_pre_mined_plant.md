# Event: on_tower_pre_mined_plant

Called before an agricultural tower mines a plant.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tower` | `LuaEntity` | no | The tower that is about to do the mining. |
| `plant` | `LuaEntity` | no | The plant that is about to be mined. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
