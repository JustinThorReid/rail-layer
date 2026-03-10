# LinkedBeltPrototype
*typename: `linked-belt`*
*extends: `TransportBeltConnectablePrototype`*

A belt that can be connected to a belt anywhere else, including on a different surface. The linked
belts have to be [connected with console
commands](https://wiki.factorio.com/Console#Connect_linked_belts) or runtime scripting in mods or
scenarios. [LuaEntity::connect_linked_belts](runtime:LuaEntity::connect_linked_belts) and other
runtime functions.

## Properties

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `structure` | `LinkedBeltStructure` | yes |  |
| `structure_render_layer` | `RenderLayer` | yes |  |
| `allow_clone_connection` | `boolean` | yes |  |
| `allow_blueprint_connection` | `boolean` | yes |  |
| `allow_side_loading` | `boolean` | yes |  |
