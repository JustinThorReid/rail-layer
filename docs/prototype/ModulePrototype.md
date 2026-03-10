# ModulePrototype
*typename: `module`*
*extends: `ItemPrototype`*

A [module](https://wiki.factorio.com/Module). They are used to affect the capabilities of existing
machines, for example by increasing the crafting speed of a [crafting
machine](prototype:CraftingMachinePrototype).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `category` | `ModuleCategoryID` | no | Used when upgrading modules: Ctrl + click modules into an entity and it will replace lower tier modules of the same c... |
| `tier` | `uint32` | no | Tier of the module inside its category. Used when upgrading modules: Ctrl + click modules into an entity and it will ... |
| `effect` | `Effect` | no | The effect of the module on the machine it's inserted in, such as increased pollution. |
| `requires_beacon_alt_mode` | `boolean` | yes |  |
| `art_style` | `string` | yes | Chooses with what art style the module is shown inside [beacons](prototype:BeaconPrototype). See [BeaconModuleVisuali... |
| `beacon_tint` | `BeaconVisualizationTints` | yes |  |
