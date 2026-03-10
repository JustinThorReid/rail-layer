# PowerSwitchPrototype
*typename: `power-switch`*
*extends: `EntityWithOwnerPrototype`*

A [power switch](https://wiki.factorio.com/Power_switch).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `power_on_animation` | `Animation` | yes |  |
| `overlay_start` | `Animation` | yes |  |
| `overlay_loop` | `Animation` | yes |  |
| `led_on` | `Sprite` | yes |  |
| `led_off` | `Sprite` | yes |  |
| `frozen_patch` | `Sprite` | yes |  |
| `overlay_start_delay` | `uint8` | no |  |
| `circuit_wire_connection_point` | `WireConnectionPoint` | no |  |
| `left_wire_connection_point` | `WireConnectionPoint` | no |  |
| `right_wire_connection_point` | `WireConnectionPoint` | no |  |
| `wire_max_distance` | `double` | yes |  |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
