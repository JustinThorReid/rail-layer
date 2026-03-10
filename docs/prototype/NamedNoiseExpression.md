# NamedNoiseExpression
*typename: `noise-expression`*
*extends: `Prototype`*

A [NoiseExpression](prototype:NoiseExpression) with a name. The base game uses named noise
expressions to specify functions for many map properties to be used in map generation; e.g. the
"elevation" expression is used to calculate elevation for every point on a map. For a list of the
built-in named noise expressions, see [data.raw](https://wiki.factorio.com/Data.raw#noise-
expression).  Named noise expressions can be used by [MapGenSettings](prototype:MapGenSettings) and
[MapGenPreset](prototype:MapGenPreset) to override which named expression is used to calculate a
given property by having an entry in `property_expression_names`, e.g. `elevation =
"elevation_island"`.  Alternate expressions can be made available in the map generator GUI by
setting their `intended_property` to the name of the property they should override.  Named noise
expressions can also be used as [noise variables](runtime:noise-expressions) e.g. `var("my-noise-
expression")`.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `expression` | `NoiseExpression` | no | The noise expression itself. This is where most of the noise magic happens. |
| `local_expressions` | `dict[string, NoiseExpression]` | yes | A map of expression name to expression. Local expressions are meant to store data locally similar to local variables ... |
| `local_functions` | `dict[string, NoiseFunction]` | yes | A map of function name to function. Local functions serve the same purpose as local expressions - they aren't visible... |
| `intended_property` | `string` | yes | Names the property that this expression is intended to provide a value for, if any. This will make the expression sho... |
| `order` | `Order` | yes | Used to order alternative expressions in the map generator GUI. For a given property (e.g. 'temperature'), the NamedN... |
