# ShortcutPrototype
*typename: `shortcut`*
*extends: `Prototype`*

Definition for a shortcut button in the [shortcut bar](https://wiki.factorio.com/Shortcut_bar).
This is **not** a custom keybinding (keyboard shortcut), for that see
[CustomInputPrototype](prototype:CustomInputPrototype).

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `action` | `'toggle-alt-mode' | 'undo' | 'redo' | 'paste' | 'import-string' | 'toggle-personal-roboport' | 'toggle-personal-logistic-requests' | 'toggle-equipment-movement-bonus' | 'spawn-item' | 'lua'` | no | If this is `"lua"`, [on_lua_shortcut](runtime:on_lua_shortcut) is raised when the shortcut is clicked. |
| `icons` | `array[IconData]` | yes | Can't be an empty array. |
| `icon` | `FileName` | yes | Path to the icon file. Only loaded, and mandatory if `icons` is not defined. |
| `icon_size` | `SpriteSizeType` | yes | The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. The base game use... |
| `small_icons` | `array[IconData]` | yes | Can't be an empty array. |
| `small_icon` | `FileName` | yes | Path to the icon file. Used in the shortcut selection popup. Only loaded, and mandatory if `small_icons` is not defined. |
| `small_icon_size` | `SpriteSizeType` | yes | The size of the small icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`. The base game uses... |
| `item_to_spawn` | `ItemID` | yes | The item to create when clicking on a shortcut with the action set to `"spawn-item"`. The item must have the [spawnab... |
| `technology_to_unlock` | `TechnologyID` | yes | The technology that must be researched before this shortcut can be used. Once a shortcut is unlocked in one save file... |
| `unavailable_until_unlocked` | `boolean` | yes | If `true`, the shortcut will not be available until its `technology_to_unlock` is researched, even if it was already ... |
| `toggleable` | `boolean` | yes | Must be enabled for the Factorio API to be able to set the toggled state on the shortcut button, see [LuaPlayer::set_... |
| `associated_control_input` | `string` | yes | Name of a custom input or vanilla control. This is **only** used to show the keybind in the tooltip of the shortcut. |
| `style` | `'default' | 'blue' | 'red' | 'green'` | yes |  |
| `order` | `Order` | yes | Used to order the shortcuts in the [quick panel](https://wiki.factorio.com/Quick_panel), which replaces the shortcut ... |
