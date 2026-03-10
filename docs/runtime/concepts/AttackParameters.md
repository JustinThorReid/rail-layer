# Concept: AttackParameters

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'projectile' | 'stream' | 'beam'` | no | The type of AttackParameter. |
| `range` | `float` | no | Maximum range of attack. |
| `min_range` | `float` | no | Minimum range of attack. Used with flamethrower turrets to prevent self-immolation. |
| `range_mode` | `RangeMode` | no | Defines how the range is determined. |
| `fire_penalty` | `float` | no | When searching for the nearest enemy to attack, `fire_penalty` is added to the enemy's distance if they are on fire. |
| `rotate_penalty` | `float` | no | When searching for an enemy to attack, a higher `rotate_penalty` will discourage targeting enemies that would take lo... |
| `health_penalty` | `float` | no | When searching for an enemy to attack, a higher `health_penalty` will discourage targeting enemies with high health. ... |
| `min_attack_distance` | `float` | no | If less than `range`, the entity will choose a random distance between `range` and `min_attack_distance` and attack f... |
| `turn_range` | `float` | no | The arc that the entity can attack in as a fraction of a circle. A value of `1` means the full 360 degrees. |
| `damage_modifier` | `float` | no | Multiplier applied to the damage of an attack. |
| `ammo_consumption_modifier` | `float` | no | Multiplier applied to the ammo consumption of an attack. |
| `cooldown` | `float` | no | Minimum amount of ticks between shots. If this is less than `1`, multiple shots can be performed per tick. |
| `warmup` | `uint32` | no | Number of ticks it takes for the weapon to actually shoot after it has been ordered to do so. |
| `movement_slow_down_factor` | `double` | no |  |
| `movement_slow_down_cooldown` | `float` | no |  |
| `ammo_type` | `AmmoType` | yes |  |
| `ammo_categories` | `array[string]` | yes | List of the names of compatible [LuaAmmoCategoryPrototypes](runtime:LuaAmmoCategoryPrototype). |
