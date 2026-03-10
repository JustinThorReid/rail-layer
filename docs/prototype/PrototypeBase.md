# PrototypeBase

The abstract base for prototypes. PrototypeBase defines the common features of prototypes, such as
localization and order.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `string` | no | Specifies the kind of prototype this is. For a list of all possible types, see the [prototype overview](prototype:pro... |
| `name` | `string` | no | Unique textual identification of the prototype. May only contain alphanumeric characters, dashes and underscores. May... |
| `order` | `Order` | yes | Used to order prototypes in inventory, recipes and GUIs. May not exceed a length of 200 characters. |
| `localised_name` | `LocalisedString` | yes | Overwrites the name set in the [locale file](https://wiki.factorio.com/Tutorial:Localisation). Can be used to easily ... |
| `localised_description` | `LocalisedString` | yes | Overwrites the description set in the [locale file](https://wiki.factorio.com/Tutorial:Localisation). The description... |
| `factoriopedia_description` | `LocalisedString` | yes | Provides additional description used in factoriopedia. |
| `subgroup` | `ItemSubGroupID` | yes | The name of an [ItemSubGroup](prototype:ItemSubGroup). |
| `hidden` | `boolean` | yes |  |
| `hidden_in_factoriopedia` | `boolean` | yes |  |
| `parameter` | `boolean` | yes | Whether the prototype is a special type which can be used to parametrize blueprints and doesn't have other function. |
| `factoriopedia_simulation` | `SimulationDefinition` | yes | The simulation shown when looking at this prototype in the Factoriopedia GUI. |
