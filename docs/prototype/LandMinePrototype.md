# LandMinePrototype
*typename: `land-mine`*
*extends: `EntityWithOwnerPrototype`*

A [land mine](https://wiki.factorio.com/Land_mine).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `picture_safe` | `Sprite` | yes | The sprite of the landmine before it is armed (just after placing). |
| `picture_set` | `Sprite` | yes | The sprite of the landmine of a friendly force when it is armed. |
| `trigger_radius` | `double` | no |  |
| `picture_set_enemy` | `Sprite` | yes | The sprite of the landmine of an enemy force when it is armed. |
| `timeout` | `uint32` | yes | Time between placing and the landmine being armed, in ticks. |
| `trigger_interval` | `uint32` | yes | Time between checks to detonate due to nearby enemies, in ticks. A larger time will be more performant. |
| `action` | `Trigger` | yes |  |
| `ammo_category` | `AmmoCategoryID` | yes |  |
| `force_die_on_attack` | `boolean` | yes | Force the landmine to kill itself when exploding. |
| `trigger_force` | `ForceCondition` | yes |  |
| `trigger_collision_mask` | `CollisionMaskConnector` | yes | Collision mask that another entity must collide with to make this landmine blow up. |
| `is_military_target` | `boolean` | yes | Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https:/... |
