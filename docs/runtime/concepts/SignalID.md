# Concept: SignalID

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `SignalIDType` | yes | The type of the signal. If the type is `"item"`, this will be `nil` when reading. |
| `name` | `string` | yes | Name of the prototype. |
| `quality` | `QualityID` | yes | The prototype name of the signal's quality. Defaults to `normal`. |
