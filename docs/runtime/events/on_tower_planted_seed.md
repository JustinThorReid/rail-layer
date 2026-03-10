# Event: on_tower_planted_seed

Called before an agricultural tower plants a seed.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `tower` | `LuaEntity` | no | The tower that did the planting. |
| `plant` | `LuaEntity` | no | The plant that was planted. |
| `seed` | `ItemIDAndQualityIDPair` | no | The seed that was used. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
