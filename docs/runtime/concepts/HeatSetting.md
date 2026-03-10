# Concept: HeatSetting

The settings used by a heat-interface type entity.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `temperature` | `double` | yes | The target temperature. Defaults to the minimum temperature of the heat buffer. |
| `mode` | `HeatSettingMode` | yes | Defaults to `"at-least"`. |
