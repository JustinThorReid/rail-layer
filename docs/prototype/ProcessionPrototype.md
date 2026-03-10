# ProcessionPrototype
*typename: `procession`*
*extends: `Prototype`*

Describes the duration and visuals of a departure, arrival or an intermezzo while traveling between
surfaces. Usually provided inside of a [ProcessionSet](prototype:ProcessionSet).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `timeline` | `ProcessionTimeline` | no | Used when leaving or arriving to a station. |
| `ground_timeline` | `ProcessionTimeline` | yes | Used alternatively when landing to ground. |
| `usage` | `'departure' | 'arrival' | 'intermezzo'` | no | Arrival and Departure are to be referenced by name. All intermezzos are collected during loading and filled in by `pr... |
| `procession_style` | `uint32 | array[uint32]` | no | Indexes used to match transitions from different surfaces together. Only a single intermezzo of a given procession_st... |
