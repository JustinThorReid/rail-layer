# Event: on_segmented_unit_created

Called when a segmented unit is created for any reason.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `cause` | `defines.segmented_unit_created_cause` | no | The reason that the segmented unit was created. |
| `segmented_unit` | `LuaSegmentedUnit` | no | The segmented unit that was created. |
| `clone_source` | `LuaSegmentedUnit` | yes | If the new segmented unit was cloned, the segmented unit from which the new unit was cloned. |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
