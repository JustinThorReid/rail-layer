# NamedNoiseFunction
*typename: `noise-function`*
*extends: `Prototype`*

Named noise functions are defined in the same way as
[NamedNoiseExpression](prototype:NamedNoiseExpression) except that they also have parameters.  Named
noise functions are available to be used in [NoiseExpressions](prototype:NoiseExpression).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `parameters` | `array[string]` | no | The order of the parameters matters because functions can also be called with positional arguments. A function can't ... |
| `expression` | `NoiseExpression` | no |  |
| `local_expressions` | `dict[string, NoiseExpression]` | yes | A map of expression name to expression. Local expressions are meant to store data locally similar to local variables ... |
| `local_functions` | `dict[string, NoiseFunction]` | yes | A map of function name to function. Local functions serve the same purpose as local expressions - they aren't visible... |
