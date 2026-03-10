# SimpleEntityWithForcePrototype
*typename: `simple-entity-with-force`*
*extends: `SimpleEntityWithOwnerPrototype`*

By default, this entity will be a priority target for units/turrets, who will choose to attack it
even if it does not block their path. Setting [EntityWithOwnerPrototype::is_military_target](prototy
pe:EntityWithOwnerPrototype::is_military_target) to `false` will turn this off, which then makes
this type equivalent to [SimpleEntityWithOwnerPrototype](prototype:SimpleEntityWithOwnerPrototype).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `is_military_target` | `boolean` | yes | Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https:/... |
