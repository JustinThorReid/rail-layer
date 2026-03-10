# FluidWagonPrototype
*typename: `fluid-wagon`*
*extends: `RollingStockPrototype`*

A [fluid wagon](https://wiki.factorio.com/Fluid_wagon).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `capacity` | `FluidAmount` | no |  |
| `quality_affects_capacity` | `boolean` | yes |  |
| `tank_count` | `uint8` | yes | Must be 1, 2 or 3. |
| `connection_category` | `string | array[string]` | yes | Pumps are only allowed to connect to this fluid wagon if the pump's [fluid box connection](prototype:PipeConnectionDe... |
