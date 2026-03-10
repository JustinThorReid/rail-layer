# RocketSiloPrototype
*typename: `rocket-silo`*
*extends: `AssemblingMachinePrototype`*

A [rocket silo](https://wiki.factorio.com/Rocket_silo).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `active_energy_usage` | `Energy` | no | Additional energy used during the following parts of the [launch sequence](runtime:defines.rocket_silo_status): doors... |
| `lamp_energy_usage` | `Energy` | no | May be 0. Additional energy used during the night, that is when [LuaSurface::darkness](runtime:LuaSurface::darkness) ... |
| `rocket_entity` | `EntityID` | no | Name of a [RocketSiloRocketPrototype](prototype:RocketSiloRocketPrototype). |
| `arm_02_right_animation` | `Animation` | yes |  |
| `arm_01_back_animation` | `Animation` | yes |  |
| `arm_03_front_animation` | `Animation` | yes |  |
| `shadow_sprite` | `Sprite` | yes |  |
| `hole_sprite` | `Sprite` | yes |  |
| `hole_light_sprite` | `Sprite` | yes |  |
| `rocket_shadow_overlay_sprite` | `Sprite` | yes |  |
| `rocket_glow_overlay_sprite` | `Sprite` | yes |  |
| `door_back_sprite` | `Sprite` | yes |  |
| `door_front_sprite` | `Sprite` | yes |  |
| `base_day_sprite` | `Sprite` | yes |  |
| `base_front_sprite` | `Sprite` | yes |  |
| `red_lights_back_sprites` | `Sprite` | yes | Drawn from the start of the [lights_blinking_open](runtime:defines.rocket_silo_status.lights_blinking_open) state unt... |
| `red_lights_front_sprites` | `Sprite` | yes | Drawn from the start of the [lights_blinking_open](runtime:defines.rocket_silo_status.lights_blinking_open) state unt... |
| `base_frozen` | `Sprite` | yes |  |
| `base_front_frozen` | `Sprite` | yes |  |
| `hole_frozen` | `Sprite` | yes |  |
| `door_back_frozen` | `Sprite` | yes |  |
| `door_front_frozen` | `Sprite` | yes |  |
| `hole_clipping_box` | `BoundingBox` | no |  |
| `door_back_open_offset` | `Vector` | no |  |
| `door_front_open_offset` | `Vector` | no |  |
| `silo_fade_out_start_distance` | `double` | no |  |
| `silo_fade_out_end_distance` | `double` | no |  |
| `times_to_blink` | `uint8` | no | How many times the `red_lights_back_sprites` and `red_lights_front_sprites` should blink during [lights_blinking_open... |
| `light_blinking_speed` | `double` | no | The inverse of the duration in ticks of [lights_blinking_open](runtime:defines.rocket_silo_status.lights_blinking_ope... |
| `door_opening_speed` | `double` | no | The inverse of the duration in ticks of [doors_opening](runtime:defines.rocket_silo_status.doors_opening) and [closin... |
| `rocket_parts_required` | `uint32` | no | The number of crafts that must complete to produce a rocket. This includes bonus crafts from productivity. Recipe pro... |
| `rocket_quick_relaunch_start_offset` | `double` | no |  |
| `satellite_animation` | `Animation` | yes |  |
| `satellite_shadow_animation` | `Animation` | yes |  |
| `base_night_sprite` | `Sprite` | yes | Drawn instead of `base_day_sprite` during the night, that is when [LuaSurface::darkness](runtime:LuaSurface::darkness... |
| `base_light` | `LightDefinition` | yes |  |
| `base_engine_light` | `LightDefinition` | yes |  |
| `rocket_rising_delay` | `uint8` | yes | The time to wait in the [doors_opened](runtime:defines.rocket_silo_status.doors_opened) state before switching to [ro... |
| `launch_wait_time` | `uint8` | yes | The time to wait in the [launch_started](runtime:defines.rocket_silo_status.launch_started) state before switching to... |
| `render_not_in_network_icon` | `boolean` | yes | Whether the "no network" icon should be rendered on this entity if the entity is not within a logistics network. |
| `rocket_parts_storage_cap` | `uint32` | yes | Must be at least `rocket_parts_required`. |
| `alarm_trigger` | `TriggerEffect` | yes | Applied when switching into the [lights_blinking_open](runtime:defines.rocket_silo_status.lights_blinking_open) state. |
| `clamps_on_trigger` | `TriggerEffect` | yes | Applied when switching into the [arms_advance](runtime:defines.rocket_silo_status.arms_advance) state. |
| `clamps_off_trigger` | `TriggerEffect` | yes | Applied when switching into the [arms_retract](runtime:defines.rocket_silo_status.arms_retract) state. |
| `doors_trigger` | `TriggerEffect` | yes | Applied when switching into the [doors_opening](runtime:defines.rocket_silo_status.doors_opening) and [doors_closing]... |
| `raise_rocket_trigger` | `TriggerEffect` | yes | Applied when switching into the [rocket_rising](runtime:defines.rocket_silo_status.rocket_rising) state. |
| `alarm_sound` | `Sound` | yes | Played when switching into the [lights_blinking_open](runtime:defines.rocket_silo_status.lights_blinking_open) state. |
| `quick_alarm_sound` | `Sound` | yes | Played when switching from [rocket_flying](runtime:defines.rocket_silo_status.rocket_flying) into the [doors_opened](... |
| `clamps_on_sound` | `Sound` | yes | Played when switching into the [arms_advance](runtime:defines.rocket_silo_status.arms_advance) state. |
| `clamps_off_sound` | `Sound` | yes | Played when switching into the [arms_retract](runtime:defines.rocket_silo_status.arms_retract) state. |
| `doors_sound` | `Sound` | yes | Played when switching into the [doors_opening](runtime:defines.rocket_silo_status.doors_opening) and [doors_closing](... |
| `raise_rocket_sound` | `Sound` | yes | Played when switching into the [rocket_rising](runtime:defines.rocket_silo_status.rocket_rising) state. |
| `to_be_inserted_to_rocket_inventory_size` | `ItemStackIndex` | yes |  |
| `logistic_trash_inventory_size` | `ItemStackIndex` | yes |  |
| `cargo_station_parameters` | `CargoStationParameters` | no | Must have exactly one entry in [CargoStationParameters::hatch_definitions](prototype:CargoStationParameters::hatch_de... |
| `launch_to_space_platforms` | `boolean` | yes | Enables 'Space Age' functionality for this rocket silo, allowing it to supply space platforms. |
| `can_launch_without_landing_pads` | `boolean` | yes |  |
