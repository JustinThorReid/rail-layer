# HeatPipePrototype
*typename: `heat-pipe`*
*extends: `EntityWithOwnerPrototype`*

A [heat pipe](https://wiki.factorio.com/Heat_pipe).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `connection_sprites` | `ConnectableEntityGraphics` | yes |  |
| `heat_glow_sprites` | `ConnectableEntityGraphics` | yes |  |
| `heat_buffer` | `HeatBuffer` | no |  |
| `heating_radius` | `float` | yes | Must be >= 0. |
