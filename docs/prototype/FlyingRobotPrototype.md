# FlyingRobotPrototype
*extends: `EntityWithOwnerPrototype`*

Abstract base for construction/logistics and combat robots.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `speed` | `double` | no | The flying speed of the robot, in tiles/tick. |
| `max_speed` | `double` | yes | The maximum flying speed of the robot, including bonuses, in tiles/tick. Useful to limit the impact of [worker robot ... |
| `max_energy` | `Energy` | yes | How much energy can be stored in the batteries. Used only by [robots with logistic interface](prototype:RobotWithLogi... |
| `energy_per_move` | `Energy` | yes | How much energy does it cost to move 1 tile. Used only by [robots with logistic interface](prototype:RobotWithLogisti... |
| `energy_per_tick` | `Energy` | yes | How much energy does it cost to fly for 1 tick. Used only by [robots with logistic interface](prototype:RobotWithLogi... |
| `min_to_charge` | `float` | yes | The robot will go to charge when its battery fill ratio is less than this. Used only by [robots with logistic interfa... |
| `max_to_charge` | `float` | yes | If the robot's battery fill ratio is more than this, it does not need to charge before stationing. Used only by [robo... |
| `speed_multiplier_when_out_of_energy` | `float` | yes | Some robots simply crash, some slowdown but keep going. 0 means crash. Used only by [robots with logistic interface](... |
| `is_military_target` | `boolean` | yes | Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https:/... |
