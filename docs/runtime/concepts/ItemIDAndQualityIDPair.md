# Concept: ItemIDAndQualityIDPair

An item prototype with optional quality specification.

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `name` | `ItemID` | no | Item prototype. Returns `LuaItemPrototype` when read. |
| `quality` | `QualityID` | yes | Quality prototype. Normal quality will be used if not specified. Returns `LuaQualityPrototype` when read. |
