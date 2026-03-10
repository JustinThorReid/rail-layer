# Concept: InfinityPipeFilter

A single filter used by an infinity-pipe type entity.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `string` | no | Name of the fluid. |
| `percentage` | `double` | yes | The fill percentage the pipe (for example `0.5` for 50%). Can't be negative. |
| `temperature` | `double` | yes | The temperature of the fluid. Defaults to the default/minimum temperature of the fluid. |
| `mode` | `'at-least' | 'at-most' | 'exactly' | 'add' | 'remove'` | yes | Defaults to `"at-least"`. |
