# VirtualSignalPrototype
*typename: `virtual-signal`*
*extends: `Prototype`*

A [virtual signal](https://wiki.factorio.com/Circuit_network#Virtual_signals).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `icons` | `array[IconData]` | yes | The icon that is used to represent this virtual signal. Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon file that is used to represent this virtual signal. Only loaded, and mandatory if `icons` is not def... |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. Only loaded if `i... |
