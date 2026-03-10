# ConstantCombinatorPrototype
*typename: `constant-combinator`*
*extends: `EntityWithOwnerPrototype`*

A [constant combinator](https://wiki.factorio.com/Constant_combinator).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `sprites` | `Sprite4Way` | yes |  |
| `activity_led_sprites` | `Sprite4Way` | yes |  |
| `activity_led_light_offsets` | `(Vector, Vector, Vector, Vector)` | no |  |
| `circuit_wire_connection_points` | `(WireConnectionPoint, WireConnectionPoint, WireConnectionPoint, WireConnectionPoint)` | no |  |
| `activity_led_light` | `LightDefinition` | yes |  |
| `circuit_wire_max_distance` | `double` | yes | The maximum circuit wire distance for this entity. |
| `draw_copper_wires` | `boolean` | yes |  |
| `draw_circuit_wires` | `boolean` | yes |  |
| `pulse_duration` | `uint32` | yes | When not zero, toggle entity will enable constant combinator for that amount of ticks and then turn it off. |
