# Concept: SegmentEngineSpecification

A runtime representation of [SegmentEngineSpecification](prototype:SegmentEngineSpecification).

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `segments` | `array[SegmentSpecification]` | no | All segments (except for the head segment) that compose the body of the segmented unit. |
| `max_body_nodes` | `uint32` | no | The maximum number of body nodes that a segmented unit instance can have. |
