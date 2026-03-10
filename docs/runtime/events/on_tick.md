# Event: on_tick

It is fired once every tick. Since this event is fired every tick, its handler shouldn't include
performance heavy code.

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
