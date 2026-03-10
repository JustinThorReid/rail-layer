# LuaPrototypeBase

Base for all prototype classes.

## Attributes

### `type` — `string` (read-only)

Type of this prototype.

### `name` — `string` (read-only)

Name of this prototype.

### `order` — `string` (read-only)

The string used to alphabetically sort these prototypes. It is a simple string that has no
additional semantic meaning.

### `localised_name` — `LocalisedString` (read-only)

### `localised_description` — `LocalisedString` (read-only)

### `factoriopedia_description` — `LocalisedString` (read-only)

Provides additional description used in factoriopedia.

### `group` — `LuaGroup` (read-only)

Group of this prototype.

### `subgroup` — `LuaGroup` (read-only)

Subgroup of this prototype.

### `hidden` — `boolean` (read-only)

### `hidden_in_factoriopedia` — `boolean` (read-only)

### `parameter` — `boolean` (read-only)

### `custom_tooltip_fields` — `array[CustomTooltipField]` (read-only) *(optional)*

Extra description items in the tooltip and Factoriopedia.
