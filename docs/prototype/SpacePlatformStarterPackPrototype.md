# SpacePlatformStarterPackPrototype
*typename: `space-platform-starter-pack`*
*extends: `ItemPrototype`*

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `trigger` | `Trigger` | yes |  |
| `surface` | `SurfaceID` | yes |  |
| `create_electric_network` | `boolean` | yes |  |
| `tiles` | `array[SpacePlatformTileDefinition]` | yes |  |
| `initial_items` | `array[ItemProductPrototype]` | yes | The quality of the items will match the quality of the starter pack. |
